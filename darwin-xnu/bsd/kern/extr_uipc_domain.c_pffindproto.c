
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
typedef int domain_guard_t ;


 int domain_guard_deploy () ;
 int domain_guard_release (int ) ;
 struct protosw* pffindproto_locked (int,int,int) ;

struct protosw *
pffindproto(int family, int protocol, int type)
{
 struct protosw *pp;
 domain_guard_t guard;

 guard = domain_guard_deploy();
 pp = pffindproto_locked(family, protocol, type);
 domain_guard_release(guard);
 return (pp);
}
