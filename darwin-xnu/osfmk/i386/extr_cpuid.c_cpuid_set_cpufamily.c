
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int cpuid_family; int cpuid_cpufamily; int cpuid_model; } ;
typedef TYPE_1__ i386_cpu_info_t ;


 int CPUFAMILY_INTEL_BROADWELL ;
 int CPUFAMILY_INTEL_HASWELL ;
 int CPUFAMILY_INTEL_IVYBRIDGE ;
 int CPUFAMILY_INTEL_KABYLAKE ;
 int CPUFAMILY_INTEL_NEHALEM ;
 int CPUFAMILY_INTEL_PENRYN ;
 int CPUFAMILY_INTEL_SANDYBRIDGE ;
 int CPUFAMILY_INTEL_SKYLAKE ;
 int CPUFAMILY_INTEL_WESTMERE ;
 int CPUFAMILY_UNKNOWN ;
 int DBG (char*,TYPE_1__*,int ) ;

__attribute__((used)) static uint32_t
cpuid_set_cpufamily(i386_cpu_info_t *info_p)
{
 uint32_t cpufamily = CPUFAMILY_UNKNOWN;

 switch (info_p->cpuid_family) {
 case 6:
  switch (info_p->cpuid_model) {
  case 23:
   cpufamily = CPUFAMILY_INTEL_PENRYN;
   break;
  case 135:
  case 144:
  case 146:
  case 134:
   cpufamily = CPUFAMILY_INTEL_NEHALEM;
   break;
  case 145:
  case 129:
  case 128:
   cpufamily = CPUFAMILY_INTEL_WESTMERE;
   break;
  case 133:
  case 138:
   cpufamily = CPUFAMILY_INTEL_SANDYBRIDGE;
   break;
  case 140:
  case 139:
   cpufamily = CPUFAMILY_INTEL_IVYBRIDGE;
   break;
  case 143:
  case 142:
  case 141:
  case 147:
   cpufamily = CPUFAMILY_INTEL_HASWELL;
   break;
  case 149:
  case 148:
   cpufamily = CPUFAMILY_INTEL_BROADWELL;
   break;
  case 132:
  case 131:

  case 130:

   cpufamily = CPUFAMILY_INTEL_SKYLAKE;
   break;
               case 137:
               case 136:
                       cpufamily = CPUFAMILY_INTEL_KABYLAKE;
                       break;
  }
  break;
 }

 info_p->cpuid_cpufamily = cpufamily;
 DBG("cpuid_set_cpufamily(%p) returning 0x%x\n", info_p, cpufamily);
 return cpufamily;
}
