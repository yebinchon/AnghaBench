#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VCHI_MEM_HANDLE_T ;
struct TYPE_7__ {scalar_t__ kill_service; scalar_t__ timer_needed; int /*<<< orphan*/  wait_event; int /*<<< orphan*/  thread; int /*<<< orphan*/  send_sem; int /*<<< orphan*/  fourcc; int /*<<< orphan*/  vchiq; int /*<<< orphan*/  service; int /*<<< orphan*/  wait_mtx; int /*<<< orphan*/  next_xid; TYPE_1__* wait; scalar_t__ timer_expired; int /*<<< orphan*/  timer; } ;
struct TYPE_6__ {int* rlen; int /*<<< orphan*/ * resp; int /*<<< orphan*/  event; scalar_t__ xid; } ;
typedef  int /*<<< orphan*/  IL_FUNCTION_T ;
typedef  TYPE_1__ ILCS_WAIT_T ;
typedef  TYPE_2__ ILCS_SERVICE_T ;

/* Variables and functions */
 scalar_t__ CLOSED_CALLBACK ; 
 int ILCS_MAX_WAITING ; 
 int ILCS_WAIT_TIMEOUT ; 
 scalar_t__ VCOS_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,void*,int,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(ILCS_SERVICE_T *st, IL_FUNCTION_T func,
                                    void *data, int len,
                                    void *data2, int len2,
                                    VCHI_MEM_HANDLE_T bulk_mem_handle, void *bulk_offset, int bulk_len,
                                    void *resp, int *rlen)
{
   ILCS_WAIT_T *wait = NULL;
   int num = 0;
   uint32_t xid;

   if(st->kill_service)
      return -1;

   // need to atomically find free ->wait entry
   FUNC7(&st->wait_mtx);

   // if resp is NULL, we do not expect any response
   if(resp == NULL) {
      xid = st->next_xid++;
   }
   else
   {
      int i;

      if(st->timer_needed++ == 0)
      {
         FUNC14(&st->timer, 10);
      }

      // we try a number of times then give up with an error message
      // rather than just deadlocking

      // Note: the real reason for the timeout is nothing to do with hardware
      // errors, but is to ensure that if the ILCS thread is calling this function
      // (because the client makes an OMX call from one of the callbacks) then
      // the queue of messages from VideoCore still gets serviced.

      for (i=0; i<ILCS_WAIT_TIMEOUT; i++) {
         num = 0;

         while(num < ILCS_MAX_WAITING && st->wait[num].resp != NULL)
            num++;

         if(num < ILCS_MAX_WAITING || i == ILCS_WAIT_TIMEOUT-1)
            break;

         // the previous time round this loop, we woke up because the timer
         // expired, so restart it
         if (st->timer_expired)
         {
            st->timer_expired = 0;
            FUNC14(&st->timer, 10);
         }

         // might be a fatal error if another thread is relying
         // on this call completing before it can complete
         // we'll pause until we can carry on and hope that's sufficient.
         FUNC8(&st->wait_mtx);

         // if we're the ilcs thread, then the waiters might need
         // us to handle their response, so try and clear those now
         if(FUNC12() == &st->thread)
         {
            while (FUNC5(&st->wait_event) != VCOS_SUCCESS)
            {
               while(FUNC0(st, 0))
                  if(st->kill_service >= CLOSED_CALLBACK)
                     return -1;
               if (FUNC5(&st->wait_event) == VCOS_SUCCESS)
                  break;
               FUNC11(1);
            }
         }
         else
         {
            FUNC6(&st->wait_event);
         }

         FUNC7(&st->wait_mtx);
      }

      if(--st->timer_needed == 0)
      {
         FUNC13(&st->timer);
         st->timer_expired = 0;
      }

      if(num == ILCS_MAX_WAITING)
      {
         // failed to send message.
         FUNC8(&st->wait_mtx);
         return -1;
      }

      wait = &st->wait[num];

      wait->resp = resp;
      wait->rlen = rlen;
      xid = wait->xid = st->next_xid++;
   }

   FUNC8(&st->wait_mtx);

   if(bulk_len != 0)
      FUNC10(&st->send_sem);

   FUNC1(st, func, xid, data, len, data2, len2);

   if(bulk_len != 0)
   {
#ifdef USE_VCHIQ_ARM
      vchiq_queue_bulk_transmit_handle(st->service, bulk_mem_handle, bulk_offset, bulk_len, NULL);
#else
      FUNC2(st->vchiq, st->fourcc, bulk_mem_handle, bulk_offset, bulk_len, NULL);
#endif
      FUNC9(&st->send_sem);
   }

   if(!wait)
   {
      // nothing more to do
      return 0;
   }

   if(FUNC12() != &st->thread)
   {
      // block waiting for response
      FUNC6(&wait->event);
   }
   else
   {
      // since we're the server task, to receive our own response code
      // we need to keep reading messages from the other side.  In
      // addition, our function executing on the host may also call
      // functions on VideoCore before replying, so we need to handle
      // all incoming messages until our response arrives.
      for (;;)
      {
         // wait->sem will not be released until we process the response message
         // so handle one incoming message
         FUNC0(st, 1);

         // did the last message release wait->sem ?
         if(st->kill_service >= CLOSED_CALLBACK || FUNC5(&wait->event) == VCOS_SUCCESS)
            break;
      }
   }

   // safe to do the following - the assignment of NULL is effectively atomic
   wait->resp = NULL;
   FUNC4(&st->wait_event);

   return st->kill_service >= CLOSED_CALLBACK ? -1 : 0;
}