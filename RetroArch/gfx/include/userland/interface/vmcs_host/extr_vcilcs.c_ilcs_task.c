
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* ilcs_common_deinit ) (int ) ;int (* ilcs_thread_init ) (int ) ;} ;
struct TYPE_8__ {scalar_t__ kill_service; int thread; int wait_mtx; int send_sem; int wait_event; TYPE_2__* wait; int timer; int queue; int bulk_rx; int service; int ilcs_common; TYPE_1__ config; } ;
struct TYPE_7__ {int event; } ;
typedef TYPE_3__ ILCS_SERVICE_T ;


 scalar_t__ CLOSED_CALLBACK ;
 int ILCS_MAX_WAITING ;
 int ilcs_process_message (TYPE_3__*,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int vchiq_remove_service (int ) ;
 int vchiu_queue_delete (int *) ;
 int vcos_abort () ;
 int vcos_event_delete (int *) ;
 int vcos_free ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;
 int vcos_thread_reap (int *,int ,TYPE_3__*) ;
 int vcos_timer_delete (int *) ;

__attribute__((used)) static void *ilcs_task(void *param)
{
   ILCS_SERVICE_T *st = (ILCS_SERVICE_T *) param;
   int i;

   st->config.ilcs_thread_init(st->ilcs_common);

   while(st->kill_service < CLOSED_CALLBACK)
      ilcs_process_message(st, 1);


   st->config.ilcs_common_deinit(st->ilcs_common);



   vcos_event_delete(&st->bulk_rx);
   vchiu_queue_delete(&st->queue);
   vcos_timer_delete(&st->timer);
   for(i=0; i<ILCS_MAX_WAITING; i++)
      vcos_event_delete(&st->wait[i].event);
   vcos_event_delete(&st->wait_event);
   vcos_semaphore_delete(&st->send_sem);
   vcos_mutex_delete(&st->wait_mtx);

   if(st->kill_service == CLOSED_CALLBACK)
   {






      vcos_abort();

   }

   return 0;
}
