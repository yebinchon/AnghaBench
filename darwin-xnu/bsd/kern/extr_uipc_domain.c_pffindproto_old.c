
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw_old {int dummy; } ;
struct protosw {int pr_flags; struct protosw_old* pr_old; } ;
typedef int domain_guard_t ;


 int PR_OLD ;
 int domain_guard_deploy () ;
 int domain_guard_release (int ) ;
 struct protosw* pffindproto_locked (int,int,int) ;

struct protosw_old *
pffindproto_old(int family, int protocol, int type)
{
 struct protosw_old *opr = ((void*)0);
 struct protosw *pp;
 domain_guard_t guard;

 guard = domain_guard_deploy();
 if ((pp = pffindproto_locked(family, protocol, type)) != ((void*)0) &&
     (pp->pr_flags & PR_OLD))
  opr = pp->pr_old;
 domain_guard_release(guard);
 return (opr);
}
