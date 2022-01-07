
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct in6_addrlifetime_i {int ia6ti_pltime; int ia6ti_vltime; int ia6ti_preferred; int ia6ti_expire; int ia6ti_base_uptime; int ia6ti_base_calendartime; } ;
struct in6_ifaddr {struct in6_addrlifetime_i ia6_lifetime; } ;
struct in6_addrlifetime {int ia6t_pltime; int ia6t_vltime; int ia6t_preferred; int ia6t_expire; } ;


 scalar_t__ NET_CALCULATE_CLOCKSKEW (struct timeval,int ,int ,int ) ;
 int getmicrotime (struct timeval*) ;
 int net_uptime () ;

void
in6ifa_setlifetime(struct in6_ifaddr *ia6, struct in6_addrlifetime *t_src)
{
 struct in6_addrlifetime_i *t_dst = &ia6->ia6_lifetime;
 struct timeval caltime;


 getmicrotime(&caltime);
 t_dst->ia6ti_base_calendartime +=
     NET_CALCULATE_CLOCKSKEW(caltime,
     t_dst->ia6ti_base_calendartime, net_uptime(),
     t_dst->ia6ti_base_uptime);


 t_dst->ia6ti_expire = t_src->ia6t_expire;
 t_dst->ia6ti_preferred = t_src->ia6t_preferred;
 t_dst->ia6ti_vltime = t_src->ia6t_vltime;
 t_dst->ia6ti_pltime = t_src->ia6t_pltime;
}
