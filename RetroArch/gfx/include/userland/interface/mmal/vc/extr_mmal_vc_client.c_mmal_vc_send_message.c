
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int magic; int msgid; } ;
typedef TYPE_1__ mmal_worker_msg_header ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_9__ {size_t member_1; TYPE_1__* member_0; } ;
typedef TYPE_2__ VCHIQ_ELEMENT_T ;
struct TYPE_10__ {int bulk_lock; int service; int inited; } ;
typedef int MMAL_STATUS_T ;
typedef TYPE_3__ MMAL_CLIENT_T ;
typedef int MMAL_BOOL_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,size_t,...) ;
 int MMAL_EINVAL ;
 int MMAL_EIO ;
 int MMAL_MAGIC ;
 int MMAL_SUCCESS ;
 scalar_t__ VCHIQ_SUCCESS ;
 scalar_t__ vchiq_queue_bulk_transmit (int ,int *,size_t,TYPE_1__*) ;
 scalar_t__ vchiq_queue_message (int ,TYPE_2__*,int) ;
 int vcos_assert (int) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_verify (int) ;

MMAL_STATUS_T mmal_vc_send_message(MMAL_CLIENT_T *client,
                                   mmal_worker_msg_header *msg_header, size_t size,
                                   uint8_t *data, size_t data_size,
                                   uint32_t msgid)
{
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg_header, size}};
   MMAL_BOOL_T using_bulk_transfer = (data_size != 0);

   LOG_TRACE("len %d", data_size);
   vcos_assert(size >= sizeof(mmal_worker_msg_header));

   if (!client->inited)
   {
      vcos_assert(0);
      return MMAL_EINVAL;
   }

   if (using_bulk_transfer)
      vcos_mutex_lock(&client->bulk_lock);

   msg_header->msgid = msgid;
   msg_header->magic = MMAL_MAGIC;

   vst = vchiq_queue_message(client->service, elems, 1);

   if (vst != VCHIQ_SUCCESS)
   {
      if (using_bulk_transfer)
         vcos_mutex_unlock(&client->bulk_lock);

      LOG_ERROR("failed");
      goto error;
   }

   if (using_bulk_transfer)
   {
      LOG_TRACE("bulk transmit: %p, %i", data, data_size);

      data_size = (data_size + 3) & ~3;
      vst = vchiq_queue_bulk_transmit(client->service, data, data_size, msg_header);

      vcos_mutex_unlock(&client->bulk_lock);

      if (!vcos_verify(vst == VCHIQ_SUCCESS))
      {
         LOG_ERROR("failed bulk transmit");


         vcos_assert(0);
         goto error;
      }
   }

   return MMAL_SUCCESS;

 error:
   return MMAL_EIO;
}
