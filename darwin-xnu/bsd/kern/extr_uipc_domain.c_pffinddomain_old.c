
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_old {int dummy; } ;
struct domain {int dom_flags; struct domain_old* dom_old; } ;
typedef int domain_guard_t ;


 int DOM_OLD ;
 int domain_guard_deploy () ;
 int domain_guard_release (int ) ;
 struct domain* pffinddomain_locked (int) ;

struct domain_old *
pffinddomain_old(int pf)
{
 struct domain_old *odp = ((void*)0);
 struct domain *dp;
 domain_guard_t guard;

 guard = domain_guard_deploy();
 if ((dp = pffinddomain_locked(pf)) != ((void*)0) && (dp->dom_flags & DOM_OLD))
  odp = dp->dom_old;
 domain_guard_release(guard);
 return (odp);
}
