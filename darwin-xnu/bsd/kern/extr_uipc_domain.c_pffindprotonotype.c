
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
typedef int domain_guard_t ;


 int domain_guard_deploy () ;
 int domain_guard_release (int ) ;
 struct protosw* pffindprotonotype_locked (int,int,int ) ;

struct protosw *
pffindprotonotype(int family, int protocol)
{
 struct protosw *pp;
 domain_guard_t guard;

 if (protocol == 0)
  return (((void*)0));

 guard = domain_guard_deploy();
 pp = pffindprotonotype_locked(family, protocol, 0);
 domain_guard_release(guard);
 return (pp);
}
