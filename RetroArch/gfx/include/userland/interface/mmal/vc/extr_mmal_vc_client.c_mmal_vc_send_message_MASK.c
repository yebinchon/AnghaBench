#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  magic; int /*<<< orphan*/  msgid; } ;
typedef  TYPE_1__ mmal_worker_msg_header ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {size_t member_1; TYPE_1__* member_0; } ;
typedef  TYPE_2__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {int /*<<< orphan*/  bulk_lock; int /*<<< orphan*/  service; int /*<<< orphan*/  inited; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  TYPE_3__ MMAL_CLIENT_T ;
typedef  int MMAL_BOOL_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int /*<<< orphan*/  MMAL_EINVAL ; 
 int /*<<< orphan*/  MMAL_EIO ; 
 int /*<<< orphan*/  MMAL_MAGIC ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

MMAL_STATUS_T FUNC8(MMAL_CLIENT_T *client,
                                   mmal_worker_msg_header *msg_header, size_t size,
                                   uint8_t *data, size_t data_size,
                                   uint32_t msgid)
{
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg_header, size}};
   MMAL_BOOL_T using_bulk_transfer = (data_size != 0);

   FUNC1("len %d", data_size);
   FUNC4(size >= sizeof(mmal_worker_msg_header));

   if (!client->inited)
   {
      FUNC4(0);
      return MMAL_EINVAL;
   }

   if (using_bulk_transfer)
      FUNC5(&client->bulk_lock);

   msg_header->msgid  = msgid;
   msg_header->magic  = MMAL_MAGIC;

   vst = FUNC3(client->service, elems, 1);

   if (vst != VCHIQ_SUCCESS)
   {
      if (using_bulk_transfer)
         FUNC6(&client->bulk_lock);

      FUNC0("failed");
      goto error;
   }

   if (using_bulk_transfer)
   {
      FUNC1("bulk transmit: %p, %i", data, data_size);

      data_size = (data_size + 3) & ~3;
      vst = FUNC2(client->service, data, data_size, msg_header);

      FUNC6(&client->bulk_lock);

      if (!FUNC7(vst == VCHIQ_SUCCESS))
      {
         FUNC0("failed bulk transmit");
         /* This really should not happen and if it does, things will go wrong as
          * we've already queued the vchiq message above. */
         FUNC4(0);
         goto error;
      }
   }

   return MMAL_SUCCESS;

 error:
   return MMAL_EIO;
}