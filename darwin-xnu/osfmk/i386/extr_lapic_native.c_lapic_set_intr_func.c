
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i386_intr_func_t ;
 int lapic_interrupt_base ;
 int * lapic_intr_func ;
 int panic (char*,int,int ) ;

void
lapic_set_intr_func(int vector, i386_intr_func_t func)
{
 if (vector > lapic_interrupt_base)
  vector -= lapic_interrupt_base;

 switch (vector) {
 case 132:
 case 133:
 case 128:
 case 129:
 case 131:
 case 134:
 case 130:
  lapic_intr_func[vector] = func;
  break;
 default:
  panic("lapic_set_intr_func(%d,%p) invalid vector\n",
   vector, func);
 }
}
