
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int64_t ;
typedef int u_int ;
struct timeval {int tv_sec; } ;
struct nd_prefix {scalar_t__ ndpr_pltime; scalar_t__ ndpr_vltime; void* ndpr_expire; void* ndpr_preferred; void* ndpr_base_uptime; int ndpr_base_calendartime; } ;


 int EINVAL ;
 int LOG_INFO ;
 scalar_t__ ND6_INFINITE_LIFETIME ;
 int NDPR_LOCK_ASSERT_HELD (struct nd_prefix*) ;
 int getmicrotime (struct timeval*) ;
 int nd6log (int ) ;
 void* net_uptime () ;

int
in6_init_prefix_ltimes(struct nd_prefix *ndpr)
{
 struct timeval caltime;
 u_int64_t timenow = net_uptime();

 NDPR_LOCK_ASSERT_HELD(ndpr);

 getmicrotime(&caltime);
 ndpr->ndpr_base_calendartime = caltime.tv_sec;
 ndpr->ndpr_base_uptime = timenow;


 if (ndpr->ndpr_pltime > ndpr->ndpr_vltime) {
  nd6log((LOG_INFO, "in6_init_prefix_ltimes: preferred lifetime"
      "(%d) is greater than valid lifetime(%d)\n",
      (u_int)ndpr->ndpr_pltime, (u_int)ndpr->ndpr_vltime));
  return (EINVAL);
 }
 if (ndpr->ndpr_pltime == ND6_INFINITE_LIFETIME)
  ndpr->ndpr_preferred = 0;
 else
  ndpr->ndpr_preferred = timenow + ndpr->ndpr_pltime;
 if (ndpr->ndpr_vltime == ND6_INFINITE_LIFETIME)
  ndpr->ndpr_expire = 0;
 else
  ndpr->ndpr_expire = timenow + ndpr->ndpr_vltime;

 return (0);
}
