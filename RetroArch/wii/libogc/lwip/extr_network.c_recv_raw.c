
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct raw_pcb {int protocol; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct netconn {scalar_t__ recvmbox; int (* callback ) (struct netconn*,int ,scalar_t__) ;int recvavail; } ;
struct netbuf {int fromport; struct ip_addr* fromaddr; struct pbuf* ptr; struct pbuf* p; } ;
struct ip_addr {int dummy; } ;


 int MEMP_NETBUF ;
 int MQ_MSG_BLOCK ;
 int MQ_Send (scalar_t__,struct netbuf*,int ) ;
 int NETCONN_EVTRCVPLUS ;
 scalar_t__ SYS_MBOX_NULL ;
 struct netbuf* memp_malloc (int ) ;
 int pbuf_ref (struct pbuf*) ;
 int stub1 (struct netconn*,int ,scalar_t__) ;

__attribute__((used)) static u8_t recv_raw(void *arg,struct raw_pcb *pcb,struct pbuf *p,struct ip_addr *addr)
{
 struct netbuf *buf;
 struct netconn *conn = (struct netconn*)arg;

 if(!conn) return 0;

 if(conn->recvmbox!=SYS_MBOX_NULL) {
  if((buf=memp_malloc(MEMP_NETBUF))==((void*)0)) return 0;

  pbuf_ref(p);
  buf->p = p;
  buf->ptr = p;
  buf->fromaddr = addr;
  buf->fromport = pcb->protocol;

  conn->recvavail += p->tot_len;
  if(conn->callback)
   (*conn->callback)(conn,NETCONN_EVTRCVPLUS,p->tot_len);
  MQ_Send(conn->recvmbox,buf,MQ_MSG_BLOCK);
 }
 return 0;
}
