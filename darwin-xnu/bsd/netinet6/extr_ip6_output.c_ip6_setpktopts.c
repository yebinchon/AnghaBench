
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; scalar_t__ m_next; } ;
struct ip6_pktopts {int dummy; } ;
struct cmsghdr {int cmsg_len; scalar_t__ cmsg_level; int cmsg_type; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 int CMSG_LEN (int ) ;
 int EINVAL ;
 scalar_t__ IPPROTO_IPV6 ;
 struct cmsghdr* M_FIRST_CMSGHDR (struct mbuf*) ;
 int M_NOWAIT ;
 struct cmsghdr* M_NXT_CMSGHDR (struct mbuf*,struct cmsghdr*) ;
 int copypktopts (struct ip6_pktopts*,struct ip6_pktopts*,int ) ;
 int ip6_initpktopts (struct ip6_pktopts*) ;
 int ip6_setpktopt (int ,int ,int,struct ip6_pktopts*,int ,int,int) ;

int
ip6_setpktopts(struct mbuf *control, struct ip6_pktopts *opt,
    struct ip6_pktopts *stickyopt, int uproto)
{
 struct cmsghdr *cm = ((void*)0);

 if (control == ((void*)0) || opt == ((void*)0))
  return (EINVAL);

 ip6_initpktopts(opt);
 if (stickyopt) {
  int error;
  if ((error = copypktopts(opt, stickyopt, M_NOWAIT)) != 0)
   return (error);
 }





 if (control->m_next)
  return (EINVAL);

 if (control->m_len < CMSG_LEN(0))
  return (EINVAL);

 for (cm = M_FIRST_CMSGHDR(control); cm != ((void*)0);
     cm = M_NXT_CMSGHDR(control, cm)) {
  int error;

  if (cm->cmsg_len < sizeof (struct cmsghdr) ||
      cm->cmsg_len > control->m_len)
   return (EINVAL);
  if (cm->cmsg_level != IPPROTO_IPV6)
   continue;

  error = ip6_setpktopt(cm->cmsg_type, CMSG_DATA(cm),
      cm->cmsg_len - CMSG_LEN(0), opt, 0, 1, uproto);
  if (error)
   return (error);
 }

 return (0);
}
