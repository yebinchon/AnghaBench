
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct inpcb {int inp_vflag; int inp_flags; } ;
struct in_addr {int dummy; } ;
struct in6_pktinfo {scalar_t__ ipi6_ifindex; int ipi6_addr; } ;
struct in6_addr {int dummy; } ;
struct flow_divert_pcb {scalar_t__ local_address; int so; } ;
typedef int * mbuf_t ;
typedef int caddr_t ;


 int IN6P_PKTINFO ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_RECVDSTADDR ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PKTINFO ;
 int IP_RECVDSTADDR ;
 int bcopy (int *,int *,int) ;
 int * sbcreatecontrol (int ,int,int ,int ) ;
 struct inpcb* sotoinpcb (int ) ;

__attribute__((used)) static mbuf_t
flow_divert_get_control_mbuf(struct flow_divert_pcb *fd_cb)
{
 struct inpcb *inp = sotoinpcb(fd_cb->so);
 if (inp->inp_vflag & INP_IPV4 && inp->inp_flags & INP_RECVDSTADDR) {
  struct sockaddr_in *sin = (struct sockaddr_in *)(void *)fd_cb->local_address;

  return sbcreatecontrol((caddr_t) &sin->sin_addr, sizeof(struct in_addr), IP_RECVDSTADDR, IPPROTO_IP);
 } else if (inp->inp_vflag & INP_IPV6 && (inp->inp_flags & IN6P_PKTINFO) != 0) {
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)(void *)fd_cb->local_address;
  struct in6_pktinfo pi6;

  bcopy(&sin6->sin6_addr, &pi6.ipi6_addr, sizeof (struct in6_addr));
  pi6.ipi6_ifindex = 0;
  return sbcreatecontrol((caddr_t)&pi6, sizeof (struct in6_pktinfo), IPV6_PKTINFO, IPPROTO_IPV6);
 }
 return (((void*)0));
}
