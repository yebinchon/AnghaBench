
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
typedef int WFC_IPC_MSG_TYPE ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {TYPE_2__ header; int context; } ;
typedef TYPE_1__ WFC_IPC_MSG_CONTEXT_T ;
typedef int WFCContext ;
typedef int VCOS_STATUS_T ;


 int wfc_client_ipc_send (TYPE_2__*,int) ;

__attribute__((used)) static VCOS_STATUS_T wfc_client_server_api_send_context(WFC_IPC_MSG_TYPE msg_type, WFCContext context)
{
   WFC_IPC_MSG_CONTEXT_T msg;

   msg.header.type = msg_type;
   msg.context = context;

   return wfc_client_ipc_send(&msg.header, sizeof(msg));
}
