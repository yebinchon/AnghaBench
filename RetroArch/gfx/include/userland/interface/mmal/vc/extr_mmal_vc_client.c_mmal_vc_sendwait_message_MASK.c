#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct MMAL_CLIENT_T {int /*<<< orphan*/  bulk_lock; int /*<<< orphan*/  service; int /*<<< orphan*/  inited; } ;
struct TYPE_10__ {TYPE_4__* waiter; } ;
struct TYPE_11__ {int msgid; int /*<<< orphan*/  magic; TYPE_1__ u; } ;
typedef  TYPE_2__ mmal_worker_msg_header ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_12__ {size_t member_1; TYPE_2__* member_0; } ;
typedef  TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_13__ {size_t destlen; int /*<<< orphan*/  sem; void* dest; } ;
typedef  TYPE_4__ MMAL_WAITER_T ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  scalar_t__ MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_EIO ; 
 int /*<<< orphan*/  MMAL_MAGIC ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 TYPE_4__* FUNC2 (struct MMAL_CLIENT_T*) ; 
 int /*<<< orphan*/  FUNC3 (struct MMAL_CLIENT_T*) ; 
 int /*<<< orphan*/  FUNC4 (struct MMAL_CLIENT_T*) ; 
 int /*<<< orphan*/  FUNC5 (struct MMAL_CLIENT_T*,TYPE_4__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

MMAL_STATUS_T FUNC13(struct MMAL_CLIENT_T *client,
                                       mmal_worker_msg_header *msg_header,
                                       size_t size,
                                       uint32_t msgid,
                                       void *dest,
                                       size_t *destlen,
                                       MMAL_BOOL_T send_dummy_bulk)
{
   MMAL_STATUS_T ret;
   MMAL_WAITER_T *waiter;
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg_header, size}};

   FUNC8(size >= sizeof(mmal_worker_msg_header));
   FUNC8(dest);

   if (!client->inited)
   {
      FUNC8(0);
      return MMAL_EINVAL;
   }

   if (send_dummy_bulk)
      FUNC9(&client->bulk_lock);

   waiter = FUNC2(client);
   msg_header->msgid  = msgid;
   msg_header->u.waiter = waiter;
   msg_header->magic  = MMAL_MAGIC;

   waiter->dest    = dest;
   waiter->destlen = *destlen;
   FUNC1("wait %p, reply to %p", waiter, dest);
   FUNC4(client);

   vst = FUNC7(client->service, elems, 1);

   if (vst != VCHIQ_SUCCESS)
   {
      ret = MMAL_EIO;
      if (send_dummy_bulk)
        FUNC10(&client->bulk_lock);
      goto fail_msg;
   }

   if (send_dummy_bulk)
   {
      uint32_t data_size = 8;
      /* The data is just some dummy bytes so it's fine for it to be static */
      static uint8_t data[8];
      vst = FUNC6(client->service, data, data_size, msg_header);

      FUNC10(&client->bulk_lock);

      if (!FUNC12(vst == VCHIQ_SUCCESS))
      {
         FUNC0("failed bulk transmit");
         /* This really should not happen and if it does, things will go wrong as
          * we've already queued the vchiq message above. */
         FUNC8(0);
         ret = MMAL_EIO;
         goto fail_msg;
      }
   }

   /* now wait for the reply...
    *
    * FIXME: we could do with a timeout here. Need to be careful to cancel
    * the semaphore on a timeout.
    */
   /* coverity[lock] This semaphore isn't being used as a mutex */
   FUNC11(&waiter->sem);

   FUNC3(client);
   FUNC1("got reply (len %i/%i)", (int)*destlen, (int)waiter->destlen);
   *destlen = waiter->destlen;

   FUNC5(client, waiter);
   return MMAL_SUCCESS;

fail_msg:
   FUNC3(client);

   FUNC5(client, waiter);
   return ret;
}