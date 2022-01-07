
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct socket {TYPE_5__* so_cfil; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {int s6_addr32; } ;
struct TYPE_7__ {int s6_addr32; } ;
struct inpcb {int inp_vflag; int inp_fport; int inp_lport; TYPE_6__* inp_socket; int inp_flags; TYPE_4__ inp_faddr; TYPE_3__ inp_laddr; TYPE_2__ in6p_faddr; TYPE_1__ in6p_laddr; } ;
typedef int local ;
struct TYPE_12__ {int so_flags; } ;
struct TYPE_11__ {int cfi_sock_id; } ;


 int AF_INET ;
 int AF_INET6 ;
 int CFIL_LOG (int,char*,char const*,char*,int ,int ,int ,int ,int ,char*,char*,...) ;
 int INP_IPV6 ;
 scalar_t__ IS_UDP (struct socket*) ;
 int MAX_IPv6_STR_LEN ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int inet_ntop (int ,void const*,char*,int) ;
 int ntohs (int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
cfil_inp_log(int level, struct socket *so, const char* msg)
{
    struct inpcb *inp = ((void*)0);
    char local[MAX_IPv6_STR_LEN+6];
    char remote[MAX_IPv6_STR_LEN+6];
    const void *addr;

    if (so == ((void*)0)) {
        return;
    }

    inp = sotoinpcb(so);
    if (inp == ((void*)0)) {
        return;
    }

    local[0] = remote[0] = 0x0;
    {
        addr = &inp->inp_laddr.s_addr;
        inet_ntop(AF_INET, addr, local, sizeof(local));
        addr = &inp->inp_faddr.s_addr;
        inet_ntop(AF_INET, addr, remote, sizeof(local));
    }

 if (so->so_cfil != ((void*)0))
  CFIL_LOG(level, "<%s>: <%s so %llx - flags 0x%x 0x%x, sockID %llu> lport %d fport %d laddr %s faddr %s",
     msg, IS_UDP(so) ? "UDP" : "TCP",
     (uint64_t)VM_KERNEL_ADDRPERM(so), inp->inp_flags, inp->inp_socket->so_flags, so->so_cfil->cfi_sock_id,
     ntohs(inp->inp_lport), ntohs(inp->inp_fport), local, remote);
 else
  CFIL_LOG(level, "<%s>: <%s so %llx - flags 0x%x 0x%x> lport %d fport %d laddr %s faddr %s",
     msg, IS_UDP(so) ? "UDP" : "TCP",
     (uint64_t)VM_KERNEL_ADDRPERM(so), inp->inp_flags, inp->inp_socket->so_flags,
     ntohs(inp->inp_lport), ntohs(inp->inp_fport), local, remote);
}
