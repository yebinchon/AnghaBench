
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct if_llreach {scalar_t__ lr_basecal; scalar_t__ lr_baseup; scalar_t__ lr_reachable; } ;


 int getmicrotime (struct timeval*) ;
 scalar_t__ net_uptime () ;

u_int64_t
ifnet_llreach_up2calexp(struct if_llreach *lr, u_int64_t uptime)
{
 u_int64_t calendar = 0;

 if (uptime != 0) {
  struct timeval cnow;
  u_int64_t unow;

  getmicrotime(&cnow);
  unow = net_uptime();





  lr->lr_basecal += (cnow.tv_sec - lr->lr_basecal) -
      (unow - lr->lr_baseup);

  calendar = lr->lr_basecal + lr->lr_reachable +
      (uptime - lr->lr_baseup);
 }

 return (calendar);
}
