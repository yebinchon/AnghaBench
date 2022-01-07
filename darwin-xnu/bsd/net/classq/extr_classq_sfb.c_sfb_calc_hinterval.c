
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct timespec {int dummy; } ;
struct sfb {int sfb_nextreset; int sfb_hinterval; } ;


 int NSEC_PER_SEC ;
 scalar_t__ SFB_HINTERVAL (struct sfb*) ;
 int nanouptime (struct timespec*) ;
 int net_nsectimer (int*,int *) ;
 int net_timeradd (struct timespec*,int *,int *) ;
 scalar_t__ sfb_hinterval ;

__attribute__((used)) static void
sfb_calc_hinterval(struct sfb *sp, u_int64_t *t)
{
 u_int64_t hinterval = 0;
 struct timespec now;

 if (t != ((void*)0)) {



  hinterval = *t;
 }

 if (sfb_hinterval != 0)
  hinterval = sfb_hinterval;
 else if (t == ((void*)0) || hinterval == 0)
  hinterval = ((u_int64_t)SFB_HINTERVAL(sp) * NSEC_PER_SEC);

 net_nsectimer(&hinterval, &sp->sfb_hinterval);

 nanouptime(&now);
 net_timeradd(&now, &sp->sfb_hinterval, &sp->sfb_nextreset);
}
