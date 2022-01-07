
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int port; int ipaddr; } ;
struct TYPE_9__ {TYPE_2__ bc; } ;
struct apimsg_msg {TYPE_3__ msg; TYPE_4__* conn; } ;
struct TYPE_7__ {int tcp; void* udp; int raw; } ;
struct TYPE_10__ {int type; TYPE_1__ pcb; int mbox; void* err; } ;


 void* ERR_MEM ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;





 int UDP_FLAGS_NOCHKSUM ;
 int UDP_FLAGS_UDPLITE ;
 int do_connected ;
 int raw_connect (int ,int ) ;
 int raw_new (int ) ;
 int raw_recv (int ,int ,TYPE_4__*) ;
 int recv_raw ;
 int recv_udp ;
 int setuptcp (TYPE_4__*) ;
 int tcp_connect (int ,int ,int ,int ) ;
 int tcp_new () ;
 int udp_connect (void*,int ,int ) ;
 void* udp_new () ;
 int udp_recv (void*,int ,TYPE_4__*) ;
 int udp_setflags (void*,int ) ;

__attribute__((used)) static void do_connect(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 if(!msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
    msg->conn->pcb.raw = raw_new(msg->msg.bc.port);
    raw_recv(msg->conn->pcb.raw,recv_raw,msg->conn);
    break;
   case 129:
    msg->conn->pcb.udp = udp_new();
    if(!msg->conn->pcb.udp) {
     msg->conn->err = ERR_MEM;
     MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
     return;
    }
    udp_setflags(msg->conn->pcb.udp,UDP_FLAGS_UDPLITE);
    udp_recv(msg->conn->pcb.udp,recv_udp,msg->conn);
    break;
   case 128:
    msg->conn->pcb.udp = udp_new();
    if(!msg->conn->pcb.udp) {
     msg->conn->err = ERR_MEM;
     MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
     return;
    }
    udp_setflags(msg->conn->pcb.udp,UDP_FLAGS_NOCHKSUM);
    udp_recv(msg->conn->pcb.udp,recv_udp,msg->conn);
    break;
   case 130:
    msg->conn->pcb.udp = udp_new();
    if(!msg->conn->pcb.udp) {
     msg->conn->err = ERR_MEM;
     MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
     return;
    }
    udp_recv(msg->conn->pcb.udp,recv_udp,msg->conn);
    break;
   case 131:
    msg->conn->pcb.tcp = tcp_new();
    if(!msg->conn->pcb.tcp) {
     msg->conn->err = ERR_MEM;
     MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
     return;
    }
    break;
   default:
    break;
  }
 }
 switch(msg->conn->type) {
  case 132:
   raw_connect(msg->conn->pcb.raw,msg->msg.bc.ipaddr);
   MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
   break;
  case 129:
  case 128:
  case 130:
   udp_connect(msg->conn->pcb.udp,msg->msg.bc.ipaddr,msg->msg.bc.port);
   MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
   break;
  case 131:
   setuptcp(msg->conn);
   tcp_connect(msg->conn->pcb.tcp,msg->msg.bc.ipaddr,msg->msg.bc.port,do_connected);
   break;
  default:
   break;
 }
}
