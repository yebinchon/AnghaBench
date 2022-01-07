
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip6_pktopts {int dummy; } ;


 int ENOBUFS ;
 int M_IP6OPT ;
 int M_WAITOK ;
 struct ip6_pktopts* _MALLOC (int,int ,int ) ;
 int ip6_initpktopts (struct ip6_pktopts*) ;
 int ip6_setpktopt (int,int *,int,struct ip6_pktopts*,int,int ,int) ;

__attribute__((used)) static int
ip6_pcbopt(int optname, u_char *buf, int len, struct ip6_pktopts **pktopt,
    int uproto)
{
 struct ip6_pktopts *opt;

 opt = *pktopt;
 if (opt == ((void*)0)) {
  opt = _MALLOC(sizeof (*opt), M_IP6OPT, M_WAITOK);
  if (opt == ((void*)0))
   return (ENOBUFS);
  ip6_initpktopts(opt);
  *pktopt = opt;
 }

 return (ip6_setpktopt(optname, buf, len, opt, 1, 0, uproto));
}
