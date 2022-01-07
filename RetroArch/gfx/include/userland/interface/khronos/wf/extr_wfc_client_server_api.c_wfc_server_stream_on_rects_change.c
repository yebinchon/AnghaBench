
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int msg ;
struct TYPE_8__ {int type; } ;
struct TYPE_6__ {void* ptr; } ;
struct TYPE_5__ {int (* ptr ) (void*) ;} ;
struct TYPE_7__ {TYPE_4__ header; TYPE_2__ rects_change_data; TYPE_1__ rects_change_cb; int stream; } ;
typedef TYPE_3__ WFC_IPC_MSG_SS_ON_RECTS_CHANGE_T ;
typedef int (* WFC_CALLBACK_T ) (void*) ;
typedef int WFCNativeStreamType ;
typedef scalar_t__ VCOS_STATUS_T ;


 int VCOS_FUNCTION ;
 scalar_t__ VCOS_SUCCESS ;
 int WFC_IPC_MSG_SS_ON_RECTS_CHANGE ;
 int stub1 (void*) ;
 int vcos_log_trace (char*,int ,int ,int (*) (void*),void*) ;
 int vcos_verify (int) ;
 scalar_t__ wfc_client_ipc_send (TYPE_4__*,int) ;

void wfc_server_stream_on_rects_change(WFCNativeStreamType stream, WFC_CALLBACK_T rects_change_cb, void *rects_change_data)
{
   WFC_IPC_MSG_SS_ON_RECTS_CHANGE_T msg;
   VCOS_STATUS_T status;

   vcos_log_trace("%s: stream 0x%x cb %p data %p", VCOS_FUNCTION, stream, rects_change_cb, rects_change_data);

   msg.header.type = WFC_IPC_MSG_SS_ON_RECTS_CHANGE;
   msg.stream = stream;
   msg.rects_change_cb.ptr = rects_change_cb;
   msg.rects_change_data.ptr = rects_change_data;

   status = wfc_client_ipc_send(&msg.header, sizeof(msg));

   if (!vcos_verify(status == VCOS_SUCCESS))
   {
      (*rects_change_cb)(rects_change_data);
   }
}
