
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int u32 ;
struct apimsg_msg {TYPE_11__* conn; } ;
struct TYPE_16__ {int state; } ;
struct TYPE_15__ {int * recv_arg; } ;
struct TYPE_14__ {TYPE_3__* tcp; TYPE_2__* udp; int raw; } ;
struct TYPE_13__ {int type; scalar_t__ mbox; int (* callback ) (TYPE_11__*,int ,int ) ;TYPE_1__ pcb; } ;


 int ERR_OK ;
 int LISTEN ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (scalar_t__,int *,int ) ;
 int NETCONN_EVTRCVPLUS ;
 int NETCONN_EVTSENDPLUS ;





 scalar_t__ SYS_MBOX_NULL ;
 int raw_remove (int ) ;
 int stub1 (TYPE_11__*,int ,int ) ;
 int stub2 (TYPE_11__*,int ,int ) ;
 int tcp_abort (TYPE_3__*) ;
 int tcp_accept (TYPE_3__*,int *) ;
 int tcp_arg (TYPE_3__*,int *) ;
 int tcp_close (TYPE_3__*) ;
 int tcp_err (TYPE_3__*,int *) ;
 int tcp_poll (TYPE_3__*,int *,int ) ;
 int tcp_recv (TYPE_3__*,int *) ;
 int tcp_sent (TYPE_3__*,int *) ;
 int udp_remove (TYPE_2__*) ;

__attribute__((used)) static void do_delconn(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 if(msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
    raw_remove(msg->conn->pcb.raw);
    break;
   case 129:
   case 128:
   case 130:
    msg->conn->pcb.udp->recv_arg = ((void*)0);
    udp_remove(msg->conn->pcb.udp);
    break;
   case 131:
    if(msg->conn->pcb.tcp->state==LISTEN) {
     tcp_arg(msg->conn->pcb.tcp,((void*)0));
     tcp_accept(msg->conn->pcb.tcp,((void*)0));
     tcp_close(msg->conn->pcb.tcp);
    } else {
     tcp_arg(msg->conn->pcb.tcp,((void*)0));
     tcp_sent(msg->conn->pcb.tcp,((void*)0));
     tcp_recv(msg->conn->pcb.tcp,((void*)0));
     tcp_poll(msg->conn->pcb.tcp,((void*)0),0);
     tcp_err(msg->conn->pcb.tcp,((void*)0));
     if(tcp_close(msg->conn->pcb.tcp)!=ERR_OK)
      tcp_abort(msg->conn->pcb.tcp);
    }
    break;
   default:
    break;
  }
 }
 if(msg->conn->callback) {
  (*msg->conn->callback)(msg->conn,NETCONN_EVTRCVPLUS,0);
  (*msg->conn->callback)(msg->conn,NETCONN_EVTSENDPLUS,0);
 }
 if(msg->conn->mbox!=SYS_MBOX_NULL)
  MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
