
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cpuid_brand_string; } ;


 TYPE_1__* cpuid_cpu_infop ;
 int kprintf (char*,char const*,char*) ;

void
cpuid_cpu_display(
 const char *header)
{
    if (cpuid_cpu_infop->cpuid_brand_string[0] != '\0') {
 kprintf("%s: %s\n", header, cpuid_cpu_infop->cpuid_brand_string);
    }
}
