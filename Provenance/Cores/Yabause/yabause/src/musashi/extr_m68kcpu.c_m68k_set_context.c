
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68ki_cpu_core ;


 int m68ki_cpu ;

void m68k_set_context(void* src)
{
 if(src) m68ki_cpu = *(m68ki_cpu_core*)src;
}
