
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sched_mode_t ;
typedef int integer_t ;





 int TH_MODE_FIXED ;
 int TH_MODE_NONE ;
 int TH_MODE_TIMESHARE ;
 int panic (char*,int) ;

__attribute__((used)) static sched_mode_t
convert_policy_to_sched_mode(integer_t policy) {
 switch (policy) {
  case 128:
   return TH_MODE_TIMESHARE;
  case 129:
  case 130:
   return TH_MODE_FIXED;
  default:
   panic("unexpected sched policy: %d", policy);
   return TH_MODE_NONE;
 }
}
