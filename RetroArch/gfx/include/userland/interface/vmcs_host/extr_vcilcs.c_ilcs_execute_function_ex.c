
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int VCHI_MEM_HANDLE_T ;
struct TYPE_7__ {scalar_t__ kill_service; scalar_t__ timer_needed; int wait_event; int thread; int send_sem; int fourcc; int vchiq; int service; int wait_mtx; int next_xid; TYPE_1__* wait; scalar_t__ timer_expired; int timer; } ;
struct TYPE_6__ {int* rlen; int * resp; int event; scalar_t__ xid; } ;
typedef int IL_FUNCTION_T ;
typedef TYPE_1__ ILCS_WAIT_T ;
typedef TYPE_2__ ILCS_SERVICE_T ;


 scalar_t__ CLOSED_CALLBACK ;
 int ILCS_MAX_WAITING ;
 int ILCS_WAIT_TIMEOUT ;
 scalar_t__ VCOS_SUCCESS ;
 scalar_t__ ilcs_process_message (TYPE_2__*,int) ;
 int ilcs_transmit (TYPE_2__*,int ,scalar_t__,void*,int,void*,int) ;
 int vchiq_queue_bulk_transmit (int ,int ,int ,void*,int,int *) ;
 int vchiq_queue_bulk_transmit_handle (int ,int ,void*,int,int *) ;
 int vcos_event_signal (int *) ;
 scalar_t__ vcos_event_try (int *) ;
 int vcos_event_wait (int *) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_post (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_sleep (int) ;
 int * vcos_thread_current () ;
 int vcos_timer_cancel (int *) ;
 int vcos_timer_set (int *,int) ;

__attribute__((used)) static int ilcs_execute_function_ex(ILCS_SERVICE_T *st, IL_FUNCTION_T func,
                                    void *data, int len,
                                    void *data2, int len2,
                                    VCHI_MEM_HANDLE_T bulk_mem_handle, void *bulk_offset, int bulk_len,
                                    void *resp, int *rlen)
{
   ILCS_WAIT_T *wait = ((void*)0);
   int num = 0;
   uint32_t xid;

   if(st->kill_service)
      return -1;


   vcos_mutex_lock(&st->wait_mtx);


   if(resp == ((void*)0)) {
      xid = st->next_xid++;
   }
   else
   {
      int i;

      if(st->timer_needed++ == 0)
      {
         vcos_timer_set(&st->timer, 10);
      }
      for (i=0; i<ILCS_WAIT_TIMEOUT; i++) {
         num = 0;

         while(num < ILCS_MAX_WAITING && st->wait[num].resp != ((void*)0))
            num++;

         if(num < ILCS_MAX_WAITING || i == ILCS_WAIT_TIMEOUT-1)
            break;



         if (st->timer_expired)
         {
            st->timer_expired = 0;
            vcos_timer_set(&st->timer, 10);
         }




         vcos_mutex_unlock(&st->wait_mtx);



         if(vcos_thread_current() == &st->thread)
         {
            while (vcos_event_try(&st->wait_event) != VCOS_SUCCESS)
            {
               while(ilcs_process_message(st, 0))
                  if(st->kill_service >= CLOSED_CALLBACK)
                     return -1;
               if (vcos_event_try(&st->wait_event) == VCOS_SUCCESS)
                  break;
               vcos_sleep(1);
            }
         }
         else
         {
            vcos_event_wait(&st->wait_event);
         }

         vcos_mutex_lock(&st->wait_mtx);
      }

      if(--st->timer_needed == 0)
      {
         vcos_timer_cancel(&st->timer);
         st->timer_expired = 0;
      }

      if(num == ILCS_MAX_WAITING)
      {

         vcos_mutex_unlock(&st->wait_mtx);
         return -1;
      }

      wait = &st->wait[num];

      wait->resp = resp;
      wait->rlen = rlen;
      xid = wait->xid = st->next_xid++;
   }

   vcos_mutex_unlock(&st->wait_mtx);

   if(bulk_len != 0)
      vcos_semaphore_wait(&st->send_sem);

   ilcs_transmit(st, func, xid, data, len, data2, len2);

   if(bulk_len != 0)
   {



      vchiq_queue_bulk_transmit(st->vchiq, st->fourcc, bulk_mem_handle, bulk_offset, bulk_len, ((void*)0));

      vcos_semaphore_post(&st->send_sem);
   }

   if(!wait)
   {

      return 0;
   }

   if(vcos_thread_current() != &st->thread)
   {

      vcos_event_wait(&wait->event);
   }
   else
   {





      for (;;)
      {


         ilcs_process_message(st, 1);


         if(st->kill_service >= CLOSED_CALLBACK || vcos_event_try(&wait->event) == VCOS_SUCCESS)
            break;
      }
   }


   wait->resp = ((void*)0);
   vcos_event_signal(&st->wait_event);

   return st->kill_service >= CLOSED_CALLBACK ? -1 : 0;
}
