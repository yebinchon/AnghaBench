
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {int dummy; } ;
struct nd_prefix {scalar_t__ ndpr_expire; scalar_t__ ndpr_vltime; scalar_t__ ndpr_base_calendartime; scalar_t__ ndpr_base_uptime; } ;


 scalar_t__ ND6_INFINITE_LIFETIME ;
 scalar_t__ NET_CALCULATE_CLOCKSKEW (struct timeval,scalar_t__,int ,scalar_t__) ;
 int getmicrotime (struct timeval*) ;
 int net_uptime () ;

uint64_t
ndpr_getexpire(struct nd_prefix *pr)
{
 struct timeval caltime;
 uint64_t expiry;

 if (pr->ndpr_expire != 0 && pr->ndpr_vltime != ND6_INFINITE_LIFETIME) {

  getmicrotime(&caltime);

  pr->ndpr_base_calendartime +=
      NET_CALCULATE_CLOCKSKEW(caltime,
      pr->ndpr_base_calendartime, net_uptime(),
      pr->ndpr_base_uptime);

  expiry = pr->ndpr_base_calendartime +
      pr->ndpr_expire - pr->ndpr_base_uptime;
 } else {
  expiry = 0;
 }
 return (expiry);
}
