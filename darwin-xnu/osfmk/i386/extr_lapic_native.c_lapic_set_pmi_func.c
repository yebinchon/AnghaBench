
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i386_intr_func_t ;


 int LAPIC_VECTOR (int ) ;
 int PERFCNT ;
 int lapic_set_intr_func (int ,int ) ;

void lapic_set_pmi_func(i386_intr_func_t func) {
 lapic_set_intr_func(LAPIC_VECTOR(PERFCNT), func);
}
