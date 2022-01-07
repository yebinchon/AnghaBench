
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct rt_metrics {scalar_t__ rmx_expire; } ;
struct rtentry {scalar_t__ rt_expire; scalar_t__ base_calendartime; scalar_t__ base_uptime; struct rt_metrics rt_rmx; } ;


 scalar_t__ NET_CALCULATE_CLOCKSKEW (struct timeval,scalar_t__,int ,scalar_t__) ;
 int VERIFY (int) ;
 int getmicrotime (struct timeval*) ;
 int net_uptime () ;

__attribute__((used)) static void
rt_getmetrics(struct rtentry *in, struct rt_metrics *out)
{
 struct timeval caltime;

 VERIFY(in->rt_expire == 0 || in->rt_rmx.rmx_expire != 0);
 VERIFY(in->rt_expire != 0 || in->rt_rmx.rmx_expire == 0);

 *out = in->rt_rmx;

 if (in->rt_expire != 0) {

  getmicrotime(&caltime);

  in->base_calendartime +=
      NET_CALCULATE_CLOCKSKEW(caltime,
      in->base_calendartime, net_uptime(), in->base_uptime);

  out->rmx_expire = in->base_calendartime +
      in->rt_expire - in->base_uptime;
 } else {
  out->rmx_expire = 0;
 }
}
