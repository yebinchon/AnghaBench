
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int len; int copy; int dataptr; } ;
struct TYPE_10__ {TYPE_2__ w; } ;
struct apimsg_msg {TYPE_7__* conn; TYPE_3__ msg; } ;
typedef int err_t ;
struct TYPE_8__ {TYPE_4__* tcp; } ;
struct TYPE_12__ {int type; int mbox; int (* callback ) (TYPE_7__*,int ,int ) ;TYPE_1__ pcb; int err; } ;
struct TYPE_11__ {int flags; int snd_queuelen; int unacked; } ;


 int API_MSG_DEBUG ;
 int ERR_OK ;
 int ERR_VAL ;
 int LWIP_DEBUGF (int ,char*) ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,int *,int ) ;
 int NETCONN_EVTSENDMINUS ;





 int TCP_SNDLOWAT ;
 int TF_NODELAY ;
 int stub1 (TYPE_7__*,int ,int ) ;
 int tcp_output (TYPE_4__*) ;
 int tcp_sndbuf (TYPE_4__*) ;
 int tcp_write (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static void do_write(struct apimsg_msg *msg)
{
 err_t err;
 u32 dummy = 0;

 if(msg->conn->pcb.tcp) {
  switch(msg->conn->type) {
   case 132:
   case 129:
   case 128:
   case 130:
    msg->conn->err = ERR_VAL;
    break;
   case 131:
    err = tcp_write(msg->conn->pcb.tcp,msg->msg.w.dataptr,msg->msg.w.len,msg->msg.w.copy);
    if(err==ERR_OK && (!msg->conn->pcb.tcp->unacked || (msg->conn->pcb.tcp->flags&TF_NODELAY)
     || msg->conn->pcb.tcp->snd_queuelen>1)) {
     LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: TCP write: tcp_output.\n"));
     tcp_output(msg->conn->pcb.tcp);
    }
    msg->conn->err = err;
    if(msg->conn->callback) {
     if(err==ERR_OK) {
      if(tcp_sndbuf(msg->conn->pcb.tcp)<=TCP_SNDLOWAT)
       (*msg->conn->callback)(msg->conn,NETCONN_EVTSENDMINUS,msg->msg.w.len);
     }
    }
    break;
   default:
    break;
  }
 }
 MQ_Send(msg->conn->mbox,&dummy,MQ_MSG_BLOCK);
}
