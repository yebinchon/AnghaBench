
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; int stream; int context; } ;
typedef TYPE_1__ WFC_IPC_MSG_SET_DEFERRAL_STREAM_T ;
typedef int WFCNativeStreamType ;
typedef int WFCContext ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SET_DEFERRAL_STREAM ;
 int vcos_assert (int) ;
 int vcos_log_trace (char*,int ,int ,int ) ;
 scalar_t__ wfc_client_ipc_send (TYPE_2__*,int) ;

void wfc_server_set_deferral_stream(WFCContext context, WFCNativeStreamType stream)
{
   WFC_IPC_MSG_SET_DEFERRAL_STREAM_T msg;
   VCOS_STATUS_T status;

   vcos_log_trace("%s: context 0x%x stream 0x%x", VCOS_FUNCTION, context, stream);

   msg.header.type = WFC_IPC_MSG_SET_DEFERRAL_STREAM;
   msg.context = context;
   msg.stream = stream;

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));

   vcos_assert(status == VCOS_SUCCESS);
}
