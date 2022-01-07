
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {size_t destlen; int sem; void* dest; } ;
typedef TYPE_2__ WFC_WAITER_T ;
struct TYPE_12__ {TYPE_2__* ptr; } ;
struct TYPE_14__ {TYPE_1__ waiter; int magic; } ;
typedef TYPE_3__ WFC_IPC_MSG_HEADER_T ;
typedef int VCOS_STATUS_T ;
typedef scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_15__ {size_t member_1; TYPE_3__* member_0; } ;
typedef TYPE_4__ VCHIQ_ELEMENT_T ;
struct TYPE_16__ {int service; int refcount; } ;


 scalar_t__ VCHIQ_SUCCESS ;
 int VCOS_ALERT (char*,int ) ;
 int VCOS_EINVAL ;
 int VCOS_ENXIO ;
 int VCOS_FUNCTION ;
 int VCOS_SUCCESS ;
 int WFC_IPC_MSG_MAGIC ;
 scalar_t__ vchiq_queue_message (int ,TYPE_4__*,int) ;
 int vcos_assert (void*) ;
 int vcos_log_error (char*,int ,scalar_t__) ;
 int vcos_log_trace (char*,int ,...) ;
 int vcos_semaphore_wait (int *) ;
 int vcos_verify (int ) ;
 TYPE_6__ wfc_client_ipc ;
 TYPE_2__* wfc_client_ipc_get_waiter (TYPE_6__*) ;
 int wfc_client_ipc_release_keep_alive () ;
 int wfc_client_ipc_release_waiter (TYPE_6__*,TYPE_2__*) ;
 int wfc_client_ipc_use_keep_alive () ;

VCOS_STATUS_T wfc_client_ipc_sendwait(WFC_IPC_MSG_HEADER_T *msg,
                                       size_t size,
                                       void *dest,
                                       size_t *destlen)
{
   VCOS_STATUS_T ret = VCOS_SUCCESS;
   WFC_WAITER_T *waiter;
   VCHIQ_STATUS_T vst;
   VCHIQ_ELEMENT_T elems[] = {{msg, size}};

   vcos_assert(size >= sizeof(*msg));
   vcos_assert(dest);

   if (!vcos_verify(wfc_client_ipc.refcount))
   {
      VCOS_ALERT("%s: client uninitialised", VCOS_FUNCTION);

      return VCOS_EINVAL;
   }

   msg->magic = WFC_IPC_MSG_MAGIC;

   waiter = wfc_client_ipc_get_waiter(&wfc_client_ipc);
   waiter->dest = dest;
   waiter->destlen = *destlen;
   msg->waiter.ptr = waiter;

   wfc_client_ipc_use_keep_alive();

   vcos_log_trace("%s: wait %p, reply to %p", VCOS_FUNCTION, waiter, dest);
   vst = vchiq_queue_message(wfc_client_ipc.service, elems, 1);

   if (vst != VCHIQ_SUCCESS)
   {
      vcos_log_error("%s: failed to queue, 0x%x", VCOS_FUNCTION, vst);
      ret = VCOS_ENXIO;
      goto completed;
   }






   vcos_semaphore_wait(&waiter->sem);
   vcos_log_trace("%s: got reply (len %i/%i)", VCOS_FUNCTION, (int)*destlen, (int)waiter->destlen);
   *destlen = waiter->destlen;



completed:
   wfc_client_ipc_release_waiter(&wfc_client_ipc, waiter);
   wfc_client_ipc_release_keep_alive();

   return ret;
}
