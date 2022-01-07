
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {int dummy; } ;
struct rtentry {scalar_t__ base_calendartime; scalar_t__ base_uptime; } ;
struct llinfo_nd6 {scalar_t__ ln_expire; struct rtentry* ln_rt; } ;


 scalar_t__ NET_CALCULATE_CLOCKSKEW (struct timeval,scalar_t__,int ,scalar_t__) ;
 int VERIFY (int ) ;
 int getmicrotime (struct timeval*) ;
 int net_uptime () ;

__attribute__((used)) static uint64_t
ln_getexpire(struct llinfo_nd6 *ln)
{
 struct timeval caltime;
 uint64_t expiry;

 if (ln->ln_expire != 0) {
  struct rtentry *rt = ln->ln_rt;

  VERIFY(rt != ((void*)0));

  getmicrotime(&caltime);

  rt->base_calendartime +=
      NET_CALCULATE_CLOCKSKEW(caltime,
      rt->base_calendartime, net_uptime(), rt->base_uptime);

  expiry = rt->base_calendartime +
      ln->ln_expire - rt->base_uptime;
 } else {
  expiry = 0;
 }
 return (expiry);
}
