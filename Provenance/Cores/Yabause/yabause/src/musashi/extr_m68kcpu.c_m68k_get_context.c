
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68ki_cpu_core ;


 int m68ki_cpu ;

unsigned int m68k_get_context(void* dst)
{
 if(dst) *(m68ki_cpu_core*)dst = m68ki_cpu;
 return sizeof(m68ki_cpu_core);
}
