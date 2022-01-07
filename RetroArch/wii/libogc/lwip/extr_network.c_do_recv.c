
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int len; } ;
struct apimsg_msg {TYPE_3__* conn; TYPE_2__ msg; } ;
struct TYPE_4__ {scalar_t__ tcp; } ;
struct TYPE_6__ {scalar_t__ type; int mbox; TYPE_1__ pcb; } ;


 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;
 scalar_t__ NETCONN_TCP ;
 int tcp_recved (scalar_t__,int ) ;

__attribute__((used)) static void do_recv(struct apimsg_msg *msg)
{
 u32 dummy = 0;

 if(msg->conn->pcb.tcp && msg->conn->type==NETCONN_TCP) {
  tcp_recved(msg->conn->pcb.tcp,msg->msg.len);
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
