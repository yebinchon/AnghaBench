
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sys_mbox ;
struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {struct tcp_pcb* tcp; } ;
struct netconn {int socket; scalar_t__ recvavail; int (* callback ) (struct netconn*,int ,int ) ;int err; int acceptmbox; TYPE_1__ pcb; int type; int mbox; int recvmbox; int sem; } ;
typedef int err_t ;


 int API_LIB_DEBUG ;
 int ERR_MEM ;
 int ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWP_SemInit (int *,int ,int) ;
 int MEMP_NETCONN ;
 int MQBOX_SIZE ;
 int MQ_Close (int ) ;
 scalar_t__ MQ_ERROR_SUCCESSFUL ;
 scalar_t__ MQ_Init (int *,int ) ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (int ,struct netconn*,int ) ;
 int NETCONN_EVTRCVPLUS ;
 int NETCONN_TCP ;
 int SYS_MBOX_NULL ;
 int memp_free (int ,struct netconn*) ;
 struct netconn* memp_malloc (int ) ;
 int setuptcp (struct netconn*) ;
 int stub1 (struct netconn*,int ,int ) ;

__attribute__((used)) static err_t accept_func(void *arg,struct tcp_pcb *newpcb,err_t err)
{
 sys_mbox mbox;
 struct netconn *newconn,*conn = (struct netconn*)arg;

 LWIP_DEBUGF(API_LIB_DEBUG, ("accept_func: %p %p %d\n",arg,newpcb,err));

 mbox = conn->acceptmbox;
 newconn = memp_malloc(MEMP_NETCONN);
 if(newconn==((void*)0)) return ERR_MEM;

 if(MQ_Init(&newconn->recvmbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) {
  memp_free(MEMP_NETCONN,newconn);
  return ERR_MEM;
 }

 if(MQ_Init(&newconn->mbox,MQBOX_SIZE)!=MQ_ERROR_SUCCESSFUL) {
  MQ_Close(newconn->recvmbox);
  memp_free(MEMP_NETCONN,newconn);
  return ERR_MEM;
 }

 if(LWP_SemInit(&newconn->sem,0,1)==-1) {
  MQ_Close(newconn->recvmbox);
  MQ_Close(newconn->mbox);
  memp_free(MEMP_NETCONN,newconn);
  return ERR_MEM;
 }

 newconn->type = NETCONN_TCP;
 newconn->pcb.tcp = newpcb;
 setuptcp(newconn);

 newconn->acceptmbox = SYS_MBOX_NULL;
 newconn->err = err;

 if(conn->callback) {
  (*conn->callback)(conn,NETCONN_EVTRCVPLUS,0);
 }
 newconn->callback = conn->callback;
 newconn->socket = -1;
 newconn->recvavail = 0;

 MQ_Send(mbox,newconn,MQ_MSG_BLOCK);
 return ERR_OK;
}
