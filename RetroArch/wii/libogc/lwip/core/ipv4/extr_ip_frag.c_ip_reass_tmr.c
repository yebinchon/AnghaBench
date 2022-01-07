
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ip_reasstmr ;

void
ip_reass_tmr(void)
{
  if (ip_reasstmr > 0) {
    ip_reasstmr--;
  }
}
