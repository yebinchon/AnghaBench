
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int result ;
typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; void* pid_hi; void* pid_lo; void* screen_or_stream_num; void* context_type; int context; } ;
typedef TYPE_1__ WFC_IPC_MSG_CREATE_CONTEXT_T ;
typedef int WFCContext ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_CREATE_CONTEXT ;
 int vcos_log_trace (char*,int ,scalar_t__,void*,...) ;
 scalar_t__ wfc_client_ipc_sendwait (TYPE_2__*,int,void**,size_t*) ;

uint32_t wfc_server_create_context(WFCContext context, uint32_t context_type,
   uint32_t screen_or_stream_num, uint32_t pid_lo, uint32_t pid_hi)
{
   WFC_IPC_MSG_CREATE_CONTEXT_T msg;
   VCOS_STATUS_T status;
   uint32_t result = -1;
   size_t result_len = sizeof(result);

   vcos_log_trace("%s: context 0x%x type 0x%x num 0x%x pid 0x%x%08x", VCOS_FUNCTION,
         context, context_type, screen_or_stream_num, pid_hi, pid_lo);

   msg.header.type = WFC_IPC_MSG_CREATE_CONTEXT;
   msg.context = context;
   msg.context_type = context_type;
   msg.screen_or_stream_num = screen_or_stream_num;
   msg.pid_lo = pid_lo;
   msg.pid_hi = pid_hi;

   status = wfc_client_ipc_sendwait(&msg.header, sizeof(msg), &result, &result_len);

   vcos_log_trace("%s: status 0x%x, result 0x%x", VCOS_FUNCTION, status, result);

   if (status != VCOS_SUCCESS)
      result = -1;

   return result;
}
