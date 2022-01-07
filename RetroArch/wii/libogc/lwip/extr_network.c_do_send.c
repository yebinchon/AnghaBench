
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int p; } ;
struct apimsg_msg {TYPE_2__* conn; TYPE_3__ msg; } ;
struct TYPE_4__ {int udp; int raw; scalar_t__ tcp; } ;
struct TYPE_5__ {int type; int mbox; TYPE_1__ pcb; } ;


 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;





 int raw_send (int ,int ) ;
 int udp_send (int ,int ) ;

__attribute__((used)) static void do_send(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 if(msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
    raw_send(msg->conn->pcb.raw,msg->msg.p);
    break;
   case 129:
   case 128:
   case 130:
    udp_send(msg->conn->pcb.udp,msg->msg.p);
    break;
   case 131:
    break;
  }
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
