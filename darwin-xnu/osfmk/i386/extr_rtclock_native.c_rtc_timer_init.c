
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i386_intr_func_t ;
typedef int TSC_deadline_timer ;


 int CPUID_FEATURE_TSCTMR ;
 int NSEC_PER_USEC ;
 int PE_parse_boot_argn (char*,int*,int) ;
 int UINT64_MAX ;
 int busFCvtt2n ;
 int cpuid_features () ;
 int kprintf (char*,int ) ;
 int lapic_set_timer_func (int ) ;
 int printf (char*,char*) ;
 int rtc_decrementer_max ;
 int rtc_decrementer_min ;
 int * rtc_timer ;
 int rtc_timer_tsc_deadline ;
 scalar_t__ rtclock_intr ;
 int tmrCvt (int,int ) ;

void
rtc_timer_init(void)
{
 int TSC_deadline_timer = 0;


 if ((cpuid_features() & CPUID_FEATURE_TSCTMR)) {
  TSC_deadline_timer = 1;
  PE_parse_boot_argn("TSC_deadline_timer", &TSC_deadline_timer,
       sizeof(TSC_deadline_timer));
  printf("TSC Deadline Timer supported %s enabled\n",
   TSC_deadline_timer ? "and" : "but not");
 }

 if (TSC_deadline_timer) {
  rtc_timer = &rtc_timer_tsc_deadline;
  rtc_decrementer_max = UINT64_MAX;





  rtc_decrementer_min = 1*NSEC_PER_USEC;
 } else {



  rtc_decrementer_max = tmrCvt(0x7fffffffULL, busFCvtt2n);
  kprintf("maxDec: %lld\n", rtc_decrementer_max);
  rtc_decrementer_min = 1*NSEC_PER_USEC;
 }


 lapic_set_timer_func((i386_intr_func_t) rtclock_intr);
}
