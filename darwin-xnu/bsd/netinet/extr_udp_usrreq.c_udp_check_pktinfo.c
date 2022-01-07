
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; scalar_t__ m_next; } ;
struct in_addr {int s_addr; } ;
struct in_pktinfo {int ipi_ifindex; struct in_addr ipi_spec_dst; } ;
struct ifnet {int dummy; } ;
struct cmsghdr {int cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;


 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int) ;
 int EINVAL ;
 int ENXIO ;
 int INADDR_ANY ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IP_PKTINFO ;
 struct cmsghdr* M_FIRST_CMSGHDR (struct mbuf*) ;
 struct cmsghdr* M_NXT_CMSGHDR (struct mbuf*,struct cmsghdr*) ;
 int if_index ;
 struct ifnet** ifindex2ifnet ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;
 int ifnet_reference (struct ifnet*) ;

__attribute__((used)) static int
udp_check_pktinfo(struct mbuf *control, struct ifnet **outif,
    struct in_addr *laddr)
{
 struct cmsghdr *cm = 0;
 struct in_pktinfo *pktinfo;
 struct ifnet *ifp;

 if (outif != ((void*)0))
  *outif = ((void*)0);





 if (control->m_next)
  return (EINVAL);

 if (control->m_len < CMSG_LEN(0))
  return (EINVAL);

 for (cm = M_FIRST_CMSGHDR(control); cm;
     cm = M_NXT_CMSGHDR(control, cm)) {
  if (cm->cmsg_len < sizeof (struct cmsghdr) ||
      cm->cmsg_len > control->m_len)
   return (EINVAL);

  if (cm->cmsg_level != IPPROTO_IP || cm->cmsg_type != IP_PKTINFO)
   continue;

  if (cm->cmsg_len != CMSG_LEN(sizeof (struct in_pktinfo)))
   return (EINVAL);

  pktinfo = (struct in_pktinfo *)(void *)CMSG_DATA(cm);


  ifnet_head_lock_shared();

  if (pktinfo->ipi_ifindex > if_index) {
   ifnet_head_done();
   return (ENXIO);
  }





  if (pktinfo->ipi_ifindex) {
   ifp = ifindex2ifnet[pktinfo->ipi_ifindex];
   if (ifp == ((void*)0)) {
    ifnet_head_done();
    return (ENXIO);
   }
   if (outif != ((void*)0)) {
    ifnet_reference(ifp);
    *outif = ifp;
   }
   ifnet_head_done();
   laddr->s_addr = INADDR_ANY;
   break;
  }

  ifnet_head_done();





  *laddr = pktinfo->ipi_spec_dst;
  break;
 }
 return (0);
}
