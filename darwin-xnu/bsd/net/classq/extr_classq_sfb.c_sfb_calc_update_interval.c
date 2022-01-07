
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct sfb {int sfb_update_interval; } ;


 int ifclassq_calc_update_interval (int *) ;
 int net_nsectimer (int *,int *) ;

__attribute__((used)) static void
sfb_calc_update_interval(struct sfb *sp, u_int64_t out_bw)
{
#pragma unused(out_bw)
 u_int64_t update_interval = 0;
 ifclassq_calc_update_interval(&update_interval);
 net_nsectimer(&update_interval, &sp->sfb_update_interval);
}
