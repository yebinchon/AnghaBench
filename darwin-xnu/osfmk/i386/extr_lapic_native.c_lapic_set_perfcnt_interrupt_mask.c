
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ boolean_t ;


 int LAPIC_LVT_MASKED ;
 int LAPIC_VECTOR (int ) ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_PERFCNT ;
 int PERFCNT ;

void lapic_set_perfcnt_interrupt_mask(boolean_t mask) {
 uint32_t m = (mask ? LAPIC_LVT_MASKED : 0);
 LAPIC_WRITE(LVT_PERFCNT, LAPIC_VECTOR(PERFCNT) | m);
}
