
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DBG (char*,int ,int ,int ,int ,int ) ;
 int do_cpuid (int ,int *) ;

__attribute__((used)) static void cpuid_fn(uint32_t selector, uint32_t *result)
{
 do_cpuid(selector, result);
 DBG("cpuid_fn(0x%08x) eax:0x%08x ebx:0x%08x ecx:0x%08x edx:0x%08x\n",
  selector, result[0], result[1], result[2], result[3]);
}
