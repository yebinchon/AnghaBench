
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; void* pid_hi; void* pid_lo; int stream; } ;
typedef TYPE_1__ WFC_IPC_MSG_SS_REGISTER_T ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_REGISTER ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ,void*,void*) ;
 scalar_t__ wfc_client_ipc_send (TYPE_2__*,int) ;

void wfc_server_stream_register(WFCNativeStreamType stream, uint32_t pid_lo, uint32_t pid_hi)
{
   WFC_IPC_MSG_SS_REGISTER_T msg;
   VCOS_STATUS_T status;

   vcos_log_trace("%s: stream 0x%x pid 0x%x%08x", VCOS_FUNCTION, stream, pid_hi, pid_lo);

   msg.header.type = WFC_IPC_MSG_SS_REGISTER;
   msg.stream = stream;
   msg.pid_lo = pid_lo;
   msg.pid_hi = pid_hi;

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));

   vcos_assert(status == VCOS_SUCCESS);
}
