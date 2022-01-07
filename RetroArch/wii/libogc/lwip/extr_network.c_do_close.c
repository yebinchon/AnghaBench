
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct apimsg_msg {TYPE_2__* conn; } ;
typedef int err_t ;
struct TYPE_7__ {int state; } ;
struct TYPE_5__ {TYPE_3__* tcp; } ;
struct TYPE_6__ {int type; int mbox; int err; TYPE_1__ pcb; } ;


 int CLOSE_WAIT ;
 int ERR_OK ;
 int LISTEN ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;





 int tcp_close (TYPE_3__*) ;
 int tcp_output (TYPE_3__*) ;

__attribute__((used)) static void do_close(struct apimsg_msg *msg)
{
 u32 dummy = 0;
 err_t err = ERR_OK;

 if(msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
   case 129:
   case 128:
   case 130:
    break;
   case 131:
    if(msg->conn->pcb.tcp->state==LISTEN)
     err = tcp_close(msg->conn->pcb.tcp);
    else if(msg->conn->pcb.tcp->state==CLOSE_WAIT)
     err = tcp_output(msg->conn->pcb.tcp);
    msg->conn->err = err;
    break;
   default:
    break;
  }
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
