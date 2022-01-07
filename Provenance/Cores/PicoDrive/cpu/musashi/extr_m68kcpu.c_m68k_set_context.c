
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* m68ki_cpu_p ;

void m68k_set_context(void* src)
{

 if(src) m68ki_cpu_p = src;

}
