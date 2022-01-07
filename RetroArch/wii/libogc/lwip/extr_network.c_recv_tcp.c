
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct tcp_pcb {int dummy; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct netconn {scalar_t__ recvmbox; int (* callback ) (struct netconn*,int ,scalar_t__) ;int recvavail; int err; } ;
typedef int err_t ;


 int API_MSG_DEBUG ;
 int ERR_OK ;
 int ERR_VAL ;
 int LWIP_DEBUGF (int ,char*) ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (scalar_t__,struct pbuf*,int ) ;
 int NETCONN_EVTRCVPLUS ;
 scalar_t__ SYS_MBOX_NULL ;
 int pbuf_free (struct pbuf*) ;
 int stub1 (struct netconn*,int ,scalar_t__) ;

__attribute__((used)) static err_t recv_tcp(void *arg,struct tcp_pcb *pcb,struct pbuf *p,err_t err)
{
 u16 len;
 struct netconn *conn = (struct netconn*)arg;

 LWIP_DEBUGF(API_MSG_DEBUG, ("api_msg: recv_tcp(%p,%p,%p,%d)\n",arg,pcb,p,err));

 if(conn==((void*)0)) {
  pbuf_free(p);
  return ERR_VAL;
 }

 if(conn->recvmbox!=SYS_MBOX_NULL) {
  conn->err = err;
  if(p!=((void*)0)) {
   len = p->tot_len;
   conn->recvavail += len;
  } else len = 0;

  if(conn->callback)
   (*conn->callback)(conn,NETCONN_EVTRCVPLUS,len);

  MQ_Send(conn->recvmbox,p,MQ_MSG_BLOCK);
 }
 return ERR_OK;
}
