
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_17__ {int inuse; int destlen; int sem; int dest; } ;
typedef TYPE_4__ WFC_WAITER_T ;
struct TYPE_16__ {TYPE_4__* ptr; } ;
struct TYPE_18__ {TYPE_3__ waiter; int type; int magic; } ;
typedef TYPE_5__ WFC_IPC_MSG_HEADER_T ;
struct TYPE_15__ {int ptr; } ;
struct TYPE_14__ {int (* ptr ) (int ) ;} ;
struct TYPE_19__ {TYPE_2__ callback_data; TYPE_1__ callback_fn; } ;
typedef TYPE_6__ WFC_IPC_MSG_CALLBACK_T ;
typedef int (* WFC_CALLBACK_T ) (int ) ;
typedef int VCHIQ_STATUS_T ;
typedef TYPE_4__* VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_REASON_T ;
struct TYPE_20__ {int size; scalar_t__ data; } ;
typedef TYPE_8__ VCHIQ_HEADER_T ;
 int VCHIQ_SUCCESS ;
 int VCOS_FUNCTION ;
 int WFC_IPC_MSG_CALLBACK ;
 int WFC_IPC_MSG_MAGIC ;
 int memcpy (int ,TYPE_5__*,int) ;
 int stub1 (int ) ;
 int vchiq_release_message (TYPE_4__*,TYPE_8__*) ;
 int vcos_assert (int) ;
 int vcos_assert_msg (int ,char*) ;
 int vcos_log_trace (char*,int ,...) ;
 int vcos_min (int,int ) ;
 int vcos_semaphore_post (int *) ;
 int vcos_verify (int ) ;

__attribute__((used)) static VCHIQ_STATUS_T wfc_client_ipc_vchiq_callback(VCHIQ_REASON_T reason,
                                                VCHIQ_HEADER_T *vchiq_header,
                                                VCHIQ_SERVICE_HANDLE_T service,
                                                void *context)
{
   vcos_log_trace("%s: reason %d", VCOS_FUNCTION, reason);

   switch (reason)
   {
   case 130:
      {
         WFC_IPC_MSG_HEADER_T *response = (WFC_IPC_MSG_HEADER_T *)vchiq_header->data;

         vcos_assert(vchiq_header->size >= sizeof(*response));
         vcos_assert(response->magic == WFC_IPC_MSG_MAGIC);

         if (response->type == WFC_IPC_MSG_CALLBACK)
         {
            WFC_IPC_MSG_CALLBACK_T *callback_msg = (WFC_IPC_MSG_CALLBACK_T *)response;
            WFC_CALLBACK_T cb_func = callback_msg->callback_fn.ptr;

            vcos_assert(vchiq_header->size == sizeof(*callback_msg));
            if (vcos_verify(cb_func != ((void*)0)))
            {

               (*cb_func)(callback_msg->callback_data.ptr);
            }
            vchiq_release_message(service, vchiq_header);
         }
         else
         {
            WFC_WAITER_T *waiter = response->waiter.ptr;
            int len;

            vcos_assert(waiter != ((void*)0));

            vcos_log_trace("%s: waking up waiter at %p", VCOS_FUNCTION, waiter);
            vcos_assert(waiter->inuse);


            len = vcos_min(waiter->destlen, vchiq_header->size - sizeof(*response));
            waiter->destlen = len;

            vcos_log_trace("%s: copying %d bytes from %p to %p first word 0x%x",
                  VCOS_FUNCTION, len, response + 1, waiter->dest, *(uint32_t *)(response + 1));
            memcpy(waiter->dest, response + 1, len);

            vchiq_release_message(service, vchiq_header);
            vcos_semaphore_post(&waiter->sem);
         }
      }
      break;
   case 131:
   case 133:
   case 134:
   case 132:
      {
         vcos_assert_msg(0, "bulk messages not used");
         vchiq_release_message(service, vchiq_header);
      }
      break;
   case 128:
      vcos_log_trace("%s: service %x opened", VCOS_FUNCTION, service);
      break;
   case 129:
      vcos_log_trace("%s: service %x closed", VCOS_FUNCTION, service);
      break;
   default:
      vcos_assert_msg(0, "unexpected message reason");
      break;
   }
   return VCHIQ_SUCCESS;
}
