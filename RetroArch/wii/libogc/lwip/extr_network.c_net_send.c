
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsocket {int conn; } ;
struct netbuf {int dummy; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ err_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOTSOCK ;
 scalar_t__ ERR_ARG ;
 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETCONN_COPY ;





 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (scalar_t__) ;
 int netbuf_delete (struct netbuf*) ;
 struct netbuf* netbuf_new () ;
 int netbuf_ref (struct netbuf*,void const*,scalar_t__) ;
 scalar_t__ netconn_send (int ,struct netbuf*) ;
 int netconn_type (int ) ;
 scalar_t__ netconn_write (int ,void const*,scalar_t__,int ) ;

s32 net_send(s32 s,const void *data,s32 len,u32 flags)
{
 struct netsocket *sock;
 struct netbuf *buf;
 err_t err;

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_send(%d, data=%p, size=%d, flags=0x%x)\n", s, data, len, flags));
 if(data==((void*)0) || len<=0) return -EINVAL;

 sock = get_socket(s);
 if(!sock) return -ENOTSOCK;

 switch(netconn_type(sock->conn)) {
  case 132:
  case 130:
  case 129:
  case 128:
   buf = netbuf_new();
   if(!buf) {
    LWIP_DEBUGF(SOCKETS_DEBUG, ("net_send(%d) ENOBUFS\n", s));
    return -ENOBUFS;
   }
   netbuf_ref(buf,data,len);
   err = netconn_send(sock->conn,buf);
   netbuf_delete(buf);
   break;
  case 131:
   err = netconn_write(sock->conn,data,len,NETCONN_COPY);
   break;
  default:
   err = ERR_ARG;
   break;
 }
 if(err!=ERR_OK) {
  LWIP_DEBUGF(SOCKETS_DEBUG, ("net_send(%d) err=%d\n", s, err));
  return -1;
 }

 LWIP_DEBUGF(SOCKETS_DEBUG, ("net_send(%d) ok size=%d\n", s, len));
 return len;
}
