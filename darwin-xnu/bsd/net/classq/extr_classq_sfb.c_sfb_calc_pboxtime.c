
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct sfb {int sfb_pboxfreeze; int sfb_pboxtime; } ;
struct TYPE_2__ {unsigned int pboxtime; scalar_t__ speed; } ;


 int PBOXTIME_MAX ;
 int PBOXTIME_MIN ;
 scalar_t__ SFB_RANDOM (struct sfb*,int ,int ) ;
 int net_nsectimer (scalar_t__*,int *) ;
 int net_timerclear (int *) ;
 scalar_t__ sfb_pboxtime ;
 TYPE_1__* sfb_ttbl ;

__attribute__((used)) static void
sfb_calc_pboxtime(struct sfb *sp, u_int64_t outbw)
{
 u_int64_t pboxtime;

 if (sfb_pboxtime != 0) {
  pboxtime = sfb_pboxtime;
 } else if (outbw == 0) {
  pboxtime = SFB_RANDOM(sp, PBOXTIME_MIN, PBOXTIME_MAX);
 } else {
  unsigned int n, i;

  n = sfb_ttbl[0].pboxtime;
  for (i = 0; sfb_ttbl[i].speed != 0; i++) {
   if (outbw < sfb_ttbl[i].speed)
    break;
   n = sfb_ttbl[i].pboxtime;
  }
  pboxtime = n;
 }
 net_nsectimer(&pboxtime, &sp->sfb_pboxtime);
 net_timerclear(&sp->sfb_pboxfreeze);
}
