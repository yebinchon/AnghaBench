
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16_t ;
typedef int u16 ;
struct netsocket {int flags; TYPE_1__* conn; } ;
typedef int s32 ;
struct TYPE_2__ {int recvavail; } ;


 int EINVAL ;
 int ENOTSOCK ;


 int LWIP_DEBUGF (int ,char*) ;
 int O_NONBLOCK ;
 int SOCKETS_DEBUG ;
 struct netsocket* get_socket (int ) ;

s32 net_ioctl(s32 s, u32 cmd, void *argp)
{
 struct netsocket *sock = get_socket(s);

 if(!sock) return -ENOTSOCK;

 switch (cmd) {
  case 128:
   if(!argp) return -EINVAL;

   *((u16_t*)argp) = sock->conn->recvavail;

   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_ioctl(%d, FIONREAD, %p) = %u\n", s, argp, *((u16*)argp)));
   return 0;

  case 129:
   if(argp && *(u32*)argp)
    sock->flags |= O_NONBLOCK;
   else
    sock->flags &= ~O_NONBLOCK;
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_ioctl(%d, FIONBIO, %d)\n", s, !!(sock->flags&O_NONBLOCK)));
   return 0;

  default:
   LWIP_DEBUGF(SOCKETS_DEBUG, ("net_ioctl(%d, UNIMPL: 0x%lx, %p)\n", s, cmd, argp));
   return -EINVAL;
 }
}
