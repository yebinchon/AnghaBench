
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dummy; } ;
typedef int domain_guard_t ;


 int domain_guard_deploy () ;
 int domain_guard_release (int ) ;
 struct domain* pffinddomain_locked (int) ;

struct domain *
pffinddomain(int pf)
{
 struct domain *dp;
 domain_guard_t guard;

 guard = domain_guard_deploy();
 dp = pffinddomain_locked(pf);
 domain_guard_release(guard);
 return (dp);
}
