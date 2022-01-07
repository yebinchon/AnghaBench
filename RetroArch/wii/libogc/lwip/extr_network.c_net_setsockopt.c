
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct netsocket {TYPE_3__* conn; } ;
typedef int socklen_t ;
typedef scalar_t__ s32 ;
struct TYPE_5__ {TYPE_1__* tcp; } ;
struct TYPE_6__ {TYPE_2__ pcb; int type; } ;
struct TYPE_4__ {int so_options; int keepalive; int flags; void* tos; void* ttl; } ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOPROTOOPT ;
 scalar_t__ ENOTSOCK ;




 int LWIP_DEBUGF (int ,char*) ;
 int NETCONN_TCP ;
 int SOCKETS_DEBUG ;







 int TF_NODELAY ;
 struct netsocket* get_socket (scalar_t__) ;

s32 net_setsockopt(s32 s,u32 level,u32 optname,const void *optval,socklen_t optlen)
{
 s32 err = 0;
 struct netsocket *sock;

 sock = get_socket(s);
 if(sock==((void*)0)) return -ENOTSOCK;
 if(optval==((void*)0)) return -EINVAL;

 switch(level) {
  case 134:
  {
   switch(optname) {
    case 133:
    case 132:
    case 131:
    case 130:
     if(optlen<sizeof(u32)) err = EINVAL;
     break;
    default:
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, SOL_SOCKET, UNIMPL: optname=0x%x, ..)\n", s, optname));
     err = ENOPROTOOPT;
   }
  }
  break;

  case 138:
  {
   switch(optname) {
    case 135:
    case 136:
     if(optlen<sizeof(u32)) err = EINVAL;
     break;
    default:
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_IP, UNIMPL: optname=0x%x, ..)\n", s, optname));
     err = ENOPROTOOPT;
   }
  }
  break;

  case 137:
  {
   if(optlen<sizeof(u32)) {
    err = EINVAL;
    break;
   }
   if(sock->conn->type!=NETCONN_TCP) return 0;

   switch(optname) {
    case 128:
    case 129:
     break;
    default:
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_TCP, UNIMPL: optname=0x%x, ..)\n", s, optname));
     err = ENOPROTOOPT;
   }
  }
  break;

  default:
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, level=0x%x, UNIMPL: optname=0x%x, ..)\n", s, level, optname));
   err = ENOPROTOOPT;
 }
 if(err!=0) return -1;

 switch(level) {
  case 134:
  {
   switch(optname) {
    case 133:
    case 132:
    case 131:
    case 130:
     if(*(u32*)optval)
      sock->conn->pcb.tcp->so_options |= optname;
     else
      sock->conn->pcb.tcp->so_options &= ~optname;
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, SOL_SOCKET, optname=0x%x, ..) -> %s\n", s, optname, (*(u32*)optval?"on":"off")));
     break;
   }
  }
  break;

  case 138:
  {
   switch(optname) {
    case 135:
     sock->conn->pcb.tcp->ttl = (u8)(*(u32*)optval);
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_IP, IP_TTL, ..) -> %u\n", s, sock->conn->pcb.tcp->ttl));
     break;
    case 136:
     sock->conn->pcb.tcp->tos = (u8)(*(u32*)optval);
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_IP, IP_TOS, ..)-> %u\n", s, sock->conn->pcb.tcp->tos));
     break;
   }
  }
  break;

  case 137:
  {
   switch(optname) {
    case 128:
     if(*(u32*)optval)
      sock->conn->pcb.tcp->flags |= TF_NODELAY;
     else
      sock->conn->pcb.tcp->flags &= ~TF_NODELAY;
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_TCP, TCP_NODELAY) -> %s\n", s, (*(u32*)optval)?"on":"off") );
     break;
    case 129:
     sock->conn->pcb.tcp->keepalive = (u32)(*(u32*)optval);
     LWIP_DEBUGF(SOCKETS_DEBUG, ("net_setsockopt(%d, IPPROTO_TCP, TCP_KEEPALIVE) -> %u\n", s, sock->conn->pcb.tcp->keepalive));
     break;
   }
  }
 }
 return err?-1:0;
}
