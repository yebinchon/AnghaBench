
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct udp_pcb {int dummy; } ;
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
 int pbuf_free (struct pbuf*) ;
 int stub1 (struct netconn*,int ,scalar_t__) ;

__attribute__((used)) static void recv_udp(void *arg,struct udp_pcb *pcb,struct pbuf *p,struct ip_addr *addr,u16 port)
{
 struct netbuf *buf;
 struct netconn *conn = (struct netconn*)arg;

 if(!conn) {
  pbuf_free(p);
  return;
 }

 if(conn->recvmbox!=SYS_MBOX_NULL) {
  buf = memp_malloc(MEMP_NETBUF);
  if(!buf) {
   pbuf_free(p);
   return;
  }
  buf->p = p;
  buf->ptr = p;
  buf->fromaddr = addr;
  buf->fromport = port;

  conn->recvavail += p->tot_len;
  if(conn->callback)
   (*conn->callback)(conn,NETCONN_EVTRCVPLUS,p->tot_len);

  MQ_Send(conn->recvmbox,buf,MQ_MSG_BLOCK);
 }
}
