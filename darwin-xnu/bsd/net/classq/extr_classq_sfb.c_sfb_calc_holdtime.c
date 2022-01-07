
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int64_t ;
struct sfb {int sfb_holdtime; } ;
struct TYPE_2__ {unsigned int holdtime; scalar_t__ speed; } ;


 int HOLDTIME_MAX ;
 int HOLDTIME_MIN ;
 scalar_t__ SFB_RANDOM (struct sfb*,int ,int ) ;
 int net_nsectimer (scalar_t__*,int *) ;
 scalar_t__ sfb_holdtime ;
 TYPE_1__* sfb_ttbl ;

__attribute__((used)) static void
sfb_calc_holdtime(struct sfb *sp, u_int64_t outbw)
{
 u_int64_t holdtime;

 if (sfb_holdtime != 0) {
  holdtime = sfb_holdtime;
 } else if (outbw == 0) {
  holdtime = SFB_RANDOM(sp, HOLDTIME_MIN, HOLDTIME_MAX);
 } else {
  unsigned int n, i;

  n = sfb_ttbl[0].holdtime;
  for (i = 0; sfb_ttbl[i].speed != 0; i++) {
   if (outbw < sfb_ttbl[i].speed)
    break;
   n = sfb_ttbl[i].holdtime;
  }
  holdtime = n;
 }
 net_nsectimer(&holdtime, &sp->sfb_holdtime);
}
