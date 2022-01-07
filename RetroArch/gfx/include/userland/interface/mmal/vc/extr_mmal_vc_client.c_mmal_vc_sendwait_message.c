
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct MMAL_CLIENT_T {int bulk_lock; int service; int inited; } ;
struct TYPE_10__ {TYPE_4__* waiter; } ;
struct TYPE_11__ {int msgid; int magic; TYPE_1__ u; } ;
typedef TYPE_2__ mmal_worker_msg_header ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_12__ {size_t member_1; TYPE_2__* member_0; } ;
typedef TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_13__ {size_t destlen; int sem; void* dest; } ;
typedef TYPE_4__ MMAL_WAITER_T ;
typedef int MMAL_STATUS_T ;
typedef scalar_t__ MMAL_BOOL_T ;


 int LOG_ERROR (char*) ;
 int LOG_TRACE (char*,...) ;
 int MMAL_EINVAL ;
 int MMAL_EIO ;
 int MMAL_MAGIC ;
 int MMAL_SUCCESS ;
 scalar_t__ VCHIQ_SUCCESS ;
 TYPE_4__* get_waiter (struct MMAL_CLIENT_T*) ;
 int mmal_vc_release_internal (struct MMAL_CLIENT_T*) ;
 int mmal_vc_use_internal (struct MMAL_CLIENT_T*) ;
 int release_waiter (struct MMAL_CLIENT_T*,TYPE_4__*) ;
 scalar_t__ vchiq_queue_bulk_transmit (int ,int *,int,TYPE_2__*) ;
 scalar_t__ vchiq_queue_message (int ,TYPE_3__*,int) ;
 int vcos_assert (void*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_verify (int) ;

MMAL_STATUS_T mmal_vc_sendwait_message(struct MMAL_CLIENT_T *client,
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

   vcos_assert(size >= sizeof(mmal_worker_msg_header));
   vcos_assert(dest);

   if (!client->inited)
   {
      vcos_assert(0);
      return MMAL_EINVAL;
   }

   if (send_dummy_bulk)
      vcos_mutex_lock(&client->bulk_lock);

   waiter = get_waiter(client);
   msg_header->msgid = msgid;
   msg_header->u.waiter = waiter;
   msg_header->magic = MMAL_MAGIC;

   waiter->dest = dest;
   waiter->destlen = *destlen;
   LOG_TRACE("wait %p, reply to %p", waiter, dest);
   mmal_vc_use_internal(client);

   vst = vchiq_queue_message(client->service, elems, 1);

   if (vst != VCHIQ_SUCCESS)
   {
      ret = MMAL_EIO;
      if (send_dummy_bulk)
        vcos_mutex_unlock(&client->bulk_lock);
      goto fail_msg;
   }

   if (send_dummy_bulk)
   {
      uint32_t data_size = 8;

      static uint8_t data[8];
      vst = vchiq_queue_bulk_transmit(client->service, data, data_size, msg_header);

      vcos_mutex_unlock(&client->bulk_lock);

      if (!vcos_verify(vst == VCHIQ_SUCCESS))
      {
         LOG_ERROR("failed bulk transmit");


         vcos_assert(0);
         ret = MMAL_EIO;
         goto fail_msg;
      }
   }







   vcos_semaphore_wait(&waiter->sem);

   mmal_vc_release_internal(client);
   LOG_TRACE("got reply (len %i/%i)", (int)*destlen, (int)waiter->destlen);
   *destlen = waiter->destlen;

   release_waiter(client, waiter);
   return MMAL_SUCCESS;

fail_msg:
   mmal_vc_release_internal(client);

   release_waiter(client, waiter);
   return ret;
}
