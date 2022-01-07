
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpuid_brand_string; int cpuid_signature; int cpuid_microcode_version; int cpuid_stepping; int cpuid_model; int cpuid_family; } ;
typedef TYPE_1__ i386_cpu_info_t ;


 TYPE_1__* cpuid_info () ;
 int paniclog_append_noflush (char*,int ,...) ;

__attribute__((used)) static void
mca_report_cpu_info(void)
{
 i386_cpu_info_t *infop = cpuid_info();

 paniclog_append_noflush(" family: %d model: %d stepping: %d microcode: %d\n",
  infop->cpuid_family,
  infop->cpuid_model,
  infop->cpuid_stepping,
  infop->cpuid_microcode_version);
 paniclog_append_noflush(" signature: 0x%x\n",
  infop->cpuid_signature);
 paniclog_append_noflush(" %s\n",
  infop->cpuid_brand_string);

}
