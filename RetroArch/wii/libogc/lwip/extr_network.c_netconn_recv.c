
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct pbuf {int tot_len; } ;
struct TYPE_6__ {TYPE_1__* tcp; } ;
struct netconn {scalar_t__ recvmbox; scalar_t__ type; scalar_t__ mbox; void* err; int (* callback ) (struct netconn*,int ,int) ;int recvavail; TYPE_2__ pcb; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_3__ msg; struct netconn* conn; } ;
struct netbuf {struct pbuf* p; TYPE_4__ msg; int type; int * fromaddr; scalar_t__ fromport; struct pbuf* ptr; } ;
struct api_msg {struct pbuf* p; TYPE_4__ msg; int type; int * fromaddr; scalar_t__ fromport; struct pbuf* ptr; } ;
typedef int mqmsg_t ;
struct TYPE_5__ {scalar_t__ state; } ;


 int APIMSG_RECV ;
 int API_LIB_DEBUG ;
 void* ERR_CONN ;
 void* ERR_MEM ;
 void* ERR_OK ;
 scalar_t__ LISTEN ;
 int LWIP_DEBUGF (int ,char*) ;
 int MEMP_API_MSG ;
 int MEMP_NETBUF ;
 int MQ_Close (scalar_t__) ;
 int MQ_MSG_BLOCK ;
 int MQ_Receive (scalar_t__,int ,int ) ;
 int NETCONN_EVTRCVMINUS ;
 scalar_t__ NETCONN_TCP ;
 scalar_t__ SYS_MBOX_NULL ;
 int apimsg_post (struct netbuf*) ;
 int memp_free (int ,struct netbuf*) ;
 struct netbuf* memp_malloc (int ) ;
 int stub1 (struct netconn*,int ,int) ;
 int stub2 (struct netconn*,int ,int) ;

__attribute__((used)) static struct netbuf* netconn_recv(struct netconn *conn)
{
 u32 dummy = 0;
 struct api_msg *msg;
 struct netbuf *buf;
 struct pbuf *p;
 u16 len;

 if(conn==((void*)0)) return ((void*)0);
 if(conn->recvmbox==SYS_MBOX_NULL) {
  conn->err = ERR_CONN;
  return ((void*)0);
 }
 if(conn->err!=ERR_OK) return ((void*)0);

 if(conn->type==NETCONN_TCP) {
  if(conn->pcb.tcp->state==LISTEN) {
   conn->err = ERR_CONN;
   return ((void*)0);
  }

  buf = memp_malloc(MEMP_NETBUF);
  if(buf==((void*)0)) {
   conn->err = ERR_MEM;
   return ((void*)0);
  }

  MQ_Receive(conn->recvmbox,(mqmsg_t)&p,MQ_MSG_BLOCK);
  if(p!=((void*)0)) {
   len = p->tot_len;
   conn->recvavail -= len;
  } else
   len = 0;

  if(conn->callback)
   (*conn->callback)(conn,NETCONN_EVTRCVMINUS,len);

  if(p==((void*)0)) {
   memp_free(MEMP_NETBUF,buf);
   MQ_Close(conn->recvmbox);
   conn->recvmbox = SYS_MBOX_NULL;
   return ((void*)0);
  }

  buf->p = p;
  buf->ptr = p;
  buf->fromport = 0;
  buf->fromaddr = ((void*)0);

  if((msg=memp_malloc(MEMP_API_MSG))==((void*)0)) {
   conn->err = ERR_MEM;
   return buf;
  }

  msg->type = APIMSG_RECV;
  msg->msg.conn = conn;
  if(buf!=((void*)0))
   msg->msg.msg.len = len;
  else
   msg->msg.msg.len = 1;

  apimsg_post(msg);
  MQ_Receive(conn->mbox,(mqmsg_t)&dummy,MQ_MSG_BLOCK);
  memp_free(MEMP_API_MSG,msg);
 } else {
  MQ_Receive(conn->recvmbox,(mqmsg_t)&buf,MQ_MSG_BLOCK);
  conn->recvavail -= buf->p->tot_len;
  if(conn->callback)
   (*conn->callback)(conn,NETCONN_EVTRCVMINUS,buf->p->tot_len);
 }

 LWIP_DEBUGF(API_LIB_DEBUG, ("netconn_recv: received %p (err %d)\n", (void *)buf, conn->err));
 return buf;
}
