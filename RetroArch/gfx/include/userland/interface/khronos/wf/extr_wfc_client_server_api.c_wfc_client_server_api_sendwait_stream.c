
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
typedef int WFC_IPC_MSG_TYPE ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; int stream; } ;
typedef TYPE_1__ WFC_IPC_MSG_STREAM_T ;
typedef int WFCNativeStreamType ;
typedef int VCOS_STATUS_T ;


 int wfc_client_ipc_sendwait (TYPE_2__*,int,void*,size_t*) ;

__attribute__((used)) static VCOS_STATUS_T wfc_client_server_api_sendwait_stream(WFC_IPC_MSG_TYPE msg_type, WFCNativeStreamType stream,
      void *result, size_t *result_len)
{
   WFC_IPC_MSG_STREAM_T msg;

   msg.header.type = msg_type;
   msg.stream = stream;

   return wfc_client_ipc_sendwait(&msg.header, sizeof(msg), result, result_len);
}
