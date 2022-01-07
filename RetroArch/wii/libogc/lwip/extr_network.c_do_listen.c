
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct apimsg_msg {TYPE_2__* conn; } ;
struct TYPE_3__ {int * tcp; } ;
struct TYPE_4__ {int type; int mbox; TYPE_1__ pcb; void* err; int acceptmbox; } ;


 int API_MSG_DEBUG ;
 void* ERR_MEM ;
 int LWIP_DEBUGF (int ,char*) ;
 int MQBOX_SIZE ;
 int MQ_ERROR_SUCCESSFUL ;
 int MQ_Init (int *,int ) ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;





 int SYS_MBOX_NULL ;
 int accept_func ;
 int tcp_accept (int *,int ) ;
 int tcp_arg (int *,TYPE_2__*) ;
 int * tcp_listen (int *) ;

__attribute__((used)) static void do_listen(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 if(msg->conn->pcb.tcp!=((void*)0)) {
  switch(msg->conn->type) {
   case 132:
    LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: listen RAW: cannot listen for RAW.\n"));
    break;
   case 129:
   case 128:
   case 130:
    LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: listen UDP: cannot listen for UDP.\n"));
    break;
   case 131:
    msg->conn->pcb.tcp = tcp_listen(msg->conn->pcb.tcp);
    if(msg->conn->pcb.tcp==((void*)0))
     msg->conn->err = ERR_MEM;
    else {
     if(msg->conn->acceptmbox==SYS_MBOX_NULL) {
      if(MQ_Init(&msg->conn->acceptmbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) {
       msg->conn->err = ERR_MEM;
       break;
      }
     }
     tcp_arg(msg->conn->pcb.tcp,msg->conn);
     tcp_accept(msg->conn->pcb.tcp,accept_func);
    }
    break;
   default:
    break;
  }
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
