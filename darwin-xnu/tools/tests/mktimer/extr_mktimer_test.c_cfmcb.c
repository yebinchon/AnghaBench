
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;
typedef int CFMachPortRef ;
typedef int CFIndex ;


 int MK_TIMER_CRITICAL ;
 double conversion ;
 double deadline ;
 double interval_abs ;
 int jiterations ;
 int leeway_abs ;
 double mach_absolute_time () ;
 double max_jitter ;
 double min_jitter ;
 int mk_timer_arm (int ,double) ;
 int mk_timer_arm_leeway (int ,int ,double,int ) ;
 int printf (char*,double,double,double) ;
 int report ;
 int timerPort ;
 double totaljitter ;
 scalar_t__ use_leeway ;

void cfmcb(CFMachPortRef port, void *msg, CFIndex size, void *msginfo) {
 uint64_t ctime = mach_absolute_time();
 uint64_t jitter = 0;

 if (deadline) {
  jitter = (ctime - deadline);
  if (jitter > max_jitter) {
   max_jitter = jitter;
  }

  if (jitter < min_jitter) {
   min_jitter = jitter;
  }

  totaljitter += jitter;
  if ((++jiterations % report) == 0) {
   printf("max_jitter: %g (ns), min_jitter: %g (ns), average_jitter: %g (ns)\n", max_jitter * conversion, min_jitter * conversion, ((double)totaljitter/(double)jiterations) * conversion);
   max_jitter = 0; min_jitter = ~0ULL; jiterations = 0; totaljitter = 0;
  }
 }

 deadline = mach_absolute_time() + interval_abs;

 if (use_leeway) {
  mk_timer_arm_leeway(timerPort, MK_TIMER_CRITICAL, deadline, leeway_abs);
 } else {
  mk_timer_arm(timerPort, deadline);
 }
}
