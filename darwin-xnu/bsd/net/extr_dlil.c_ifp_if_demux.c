
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int errno_t ;


 int EJUSTRETURN ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static errno_t
ifp_if_demux(struct ifnet *ifp, struct mbuf *m, char *fh, protocol_family_t *pf)
{
#pragma unused(ifp, fh, pf)
 m_freem(m);
 return (EJUSTRETURN);
}
