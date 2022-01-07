
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;


 int DBG_FUNC_NONE ;
 int DECR_SET_APIC_DEADLINE ;
 int FALSE ;
 int KERNEL_DEBUG_CONSTANT (int,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int LAPIC_READ (int ) ;
 int TIMER_CURRENT_COUNT ;
 int busFCvtn2t ;
 scalar_t__ deadline_to_decrementer (scalar_t__,scalar_t__) ;
 int divide_by_1 ;
 int lapic_set_timer (int ,int ,int ,int ) ;
 int lapic_set_timer_fast (int ) ;
 int one_shot ;
 scalar_t__ tmrCvt (scalar_t__,int ) ;

__attribute__((used)) static uint64_t
rtc_lapic_set_timer(uint64_t deadline, uint64_t now)
{
 uint64_t count;
 uint64_t set = 0;

 if (deadline > 0) {




  count = deadline_to_decrementer(deadline, now);
  set = now + count;
  lapic_set_timer_fast((uint32_t) tmrCvt(count, busFCvtn2t));
 } else {
  lapic_set_timer(FALSE, one_shot, divide_by_1, 0);
 }

 KERNEL_DEBUG_CONSTANT(
  DECR_SET_APIC_DEADLINE | DBG_FUNC_NONE,
  now, deadline,
  set, LAPIC_READ(TIMER_CURRENT_COUNT),
  0);

 return set;
}
