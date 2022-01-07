
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LAPIC_VECTOR (int ) ;
 int LAPIC_WRITE (int ,int ) ;
 int LVT_PERFCNT ;
 int PERFCNT ;

void lapic_unmask_perfcnt_interrupt(void) {
 LAPIC_WRITE(LVT_PERFCNT, LAPIC_VECTOR(PERFCNT));
}
