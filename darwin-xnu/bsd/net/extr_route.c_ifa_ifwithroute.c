
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 struct ifaddr* ifa_ifwithroute_locked (int,struct sockaddr const*,struct sockaddr const*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;

struct ifaddr *
ifa_ifwithroute(
 int flags,
 const struct sockaddr *dst,
 const struct sockaddr *gateway)
{
 struct ifaddr *ifa;

 lck_mtx_lock(rnh_lock);
 ifa = ifa_ifwithroute_locked(flags, dst, gateway);
 lck_mtx_unlock(rnh_lock);

 return (ifa);
}
