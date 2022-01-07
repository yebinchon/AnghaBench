
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * tcp; } ;
struct netconn {scalar_t__ recvmbox; scalar_t__ mbox; scalar_t__ acceptmbox; scalar_t__ sem; int (* callback ) (struct netconn*,int ,int ) ;TYPE_1__ pcb; int err; } ;
typedef int err_t ;


 int API_MSG_DEBUG ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemPost (scalar_t__) ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (scalar_t__,int *,int ) ;
 int NETCONN_EVTRCVPLUS ;
 scalar_t__ SYS_MBOX_NULL ;
 scalar_t__ SYS_SEM_NULL ;
 int stub1 (struct netconn*,int ,int ) ;
 int stub2 (struct netconn*,int ,int ) ;

__attribute__((used)) static void err_tcp(void *arg,err_t err)
{
 u32 dummy = 0;
 struct netconn *conn = (struct netconn*)arg;

 LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: err_tcp: %d\n",err));
 if(conn) {
  conn->err = err;
  conn->pcb.tcp = ((void*)0);
  if(conn->recvmbox!=SYS_MBOX_NULL) {
   if(conn->callback) (*conn->callback)(conn,NETCONN_EVTRCVPLUS,0);
   MQ_Send(conn->recvmbox,&dummy,MQ_MSG_BLOCK);
  }
  if(conn->mbox!=SYS_MBOX_NULL) {
   MQ_Send(conn->mbox,&dummy,MQ_MSG_BLOCK);
  }
  if(conn->acceptmbox!=SYS_MBOX_NULL) {
   if(conn->callback) (*conn->callback)(conn,NETCONN_EVTRCVPLUS,0);
   MQ_Send(conn->acceptmbox,&dummy,MQ_MSG_BLOCK);
  }
  if(conn->sem!=SYS_SEM_NULL) {
   LWP_SemPost(conn->sem);
  }
 }
}
