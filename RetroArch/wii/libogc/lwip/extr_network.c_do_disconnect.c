
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct apimsg_msg {TYPE_2__* conn; } ;
struct TYPE_3__ {int udp; } ;
struct TYPE_4__ {int type; int mbox; TYPE_1__ pcb; } ;


 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;





 int udp_disconnect (int ) ;

__attribute__((used)) static void do_disconnect(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 switch(msg->conn->type) {
  case 132:
   break;
  case 129:
  case 128:
  case 130:
   udp_disconnect(msg->conn->pcb.udp);
   break;
  case 131:
   break;
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
