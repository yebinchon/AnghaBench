#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_17__ {int inuse; int destlen; int /*<<< orphan*/  sem; int /*<<< orphan*/  dest; } ;
typedef  TYPE_4__ WFC_WAITER_T ;
struct TYPE_16__ {TYPE_4__* ptr; } ;
struct TYPE_18__ {TYPE_3__ waiter; int /*<<< orphan*/  type; int /*<<< orphan*/  magic; } ;
typedef  TYPE_5__ WFC_IPC_MSG_HEADER_T ;
struct TYPE_15__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* ptr ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {TYPE_2__ callback_data; TYPE_1__ callback_fn; } ;
typedef  TYPE_6__ WFC_IPC_MSG_CALLBACK_T ;
typedef  int /*<<< orphan*/  (* WFC_CALLBACK_T ) (int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  TYPE_4__* VCHIQ_SERVICE_HANDLE_T ;
typedef  int VCHIQ_REASON_T ;
struct TYPE_20__ {int size; scalar_t__ data; } ;
typedef  TYPE_8__ VCHIQ_HEADER_T ;

/* Variables and functions */
#define  VCHIQ_BULK_RECEIVE_ABORTED 134 
#define  VCHIQ_BULK_RECEIVE_DONE 133 
#define  VCHIQ_BULK_TRANSMIT_ABORTED 132 
#define  VCHIQ_BULK_TRANSMIT_DONE 131 
#define  VCHIQ_MESSAGE_AVAILABLE 130 
#define  VCHIQ_SERVICE_CLOSED 129 
#define  VCHIQ_SERVICE_OPENED 128 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  WFC_IPC_MSG_CALLBACK ; 
 int /*<<< orphan*/  WFC_IPC_MSG_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VCHIQ_STATUS_T FUNC9(VCHIQ_REASON_T reason,
                                                VCHIQ_HEADER_T *vchiq_header,
                                                VCHIQ_SERVICE_HANDLE_T service,
                                                void *context)
{
   FUNC5("%s: reason %d", VCOS_FUNCTION, reason);

   switch (reason)
   {
   case VCHIQ_MESSAGE_AVAILABLE:
      {
         WFC_IPC_MSG_HEADER_T *response = (WFC_IPC_MSG_HEADER_T *)vchiq_header->data;

         FUNC3(vchiq_header->size >= sizeof(*response));
         FUNC3(response->magic == WFC_IPC_MSG_MAGIC);

         if (response->type == WFC_IPC_MSG_CALLBACK)
         {
            WFC_IPC_MSG_CALLBACK_T *callback_msg = (WFC_IPC_MSG_CALLBACK_T *)response;
            WFC_CALLBACK_T cb_func = callback_msg->callback_fn.ptr;

            FUNC3(vchiq_header->size == sizeof(*callback_msg));
            if (FUNC8(cb_func != NULL))
            {
               /* Call the client function */
               (*cb_func)(callback_msg->callback_data.ptr);
            }
            FUNC2(service, vchiq_header);
         }
         else
         {
            WFC_WAITER_T *waiter = response->waiter.ptr;
            int len;

            FUNC3(waiter != NULL);

            FUNC5("%s: waking up waiter at %p", VCOS_FUNCTION, waiter);
            FUNC3(waiter->inuse);

            /* Limit response data length */
            len = FUNC6(waiter->destlen, vchiq_header->size - sizeof(*response));
            waiter->destlen = len;

            FUNC5("%s: copying %d bytes from %p to %p first word 0x%x",
                  VCOS_FUNCTION, len, response + 1, waiter->dest, *(uint32_t *)(response + 1));
            FUNC0(waiter->dest, response + 1, len);

            FUNC2(service, vchiq_header);
            FUNC7(&waiter->sem);
         }
      }
      break;
   case VCHIQ_BULK_TRANSMIT_DONE:
   case VCHIQ_BULK_RECEIVE_DONE:
   case VCHIQ_BULK_RECEIVE_ABORTED:
   case VCHIQ_BULK_TRANSMIT_ABORTED:
      {
         FUNC4(0, "bulk messages not used");
         FUNC2(service, vchiq_header);
      }
      break;
   case VCHIQ_SERVICE_OPENED:
      FUNC5("%s: service %x opened", VCOS_FUNCTION, service);
      break;
   case VCHIQ_SERVICE_CLOSED:
      FUNC5("%s: service %x closed", VCOS_FUNCTION, service);
      break;
   default:
      FUNC4(0, "unexpected message reason");
      break;
   }
   return VCHIQ_SUCCESS;
}