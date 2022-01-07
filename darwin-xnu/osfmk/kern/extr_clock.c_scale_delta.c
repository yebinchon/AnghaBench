
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct bintime {int sec; scalar_t__ frac; } ;
typedef int int64_t ;


 scalar_t__ NSEC_PER_SEC ;
 int bintime_addns (struct bintime*,int) ;
 int bintime_addx (struct bintime*,int) ;
 int bintime_addxns (struct bintime*,int,int) ;
 int bintime_subx (struct bintime*,int) ;
 int multi_overflow (int,int) ;
 int ticks_per_sec ;

__attribute__((used)) static struct bintime
scale_delta(uint64_t delta, uint64_t tick_scale_x, uint64_t s_scale_ns, int64_t s_adj_nsx)
{
 uint64_t sec, new_ns, over;
 struct bintime bt;

 bt.sec = 0;
 bt.frac = 0;







 if (delta > ticks_per_sec) {
  sec = (delta/ticks_per_sec);
  new_ns = sec * s_scale_ns;
  bintime_addns(&bt, new_ns);
  if (s_adj_nsx) {
   if (sec == 1) {

    if (s_adj_nsx > 0)
     bintime_addx(&bt, (uint64_t)s_adj_nsx/ (uint64_t)NSEC_PER_SEC);
    else
     bintime_subx(&bt, (uint64_t)-s_adj_nsx/ (uint64_t)NSEC_PER_SEC);
   }
   else{





    bintime_addxns(&bt, sec, s_adj_nsx);
   }
  }
  delta = (delta % ticks_per_sec);
        }

 over = multi_overflow(tick_scale_x, delta);
 if(over){
  bt.sec += over;
 }




 bintime_addx(&bt, delta * tick_scale_x);

 return bt;
}
