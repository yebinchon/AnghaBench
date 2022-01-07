
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arm_implementor; int arm_part; } ;
struct TYPE_4__ {TYPE_1__ arm_info; } ;


 int CPUFAMILY_ARM_11 ;
 int CPUFAMILY_ARM_13 ;
 int CPUFAMILY_ARM_14 ;
 int CPUFAMILY_ARM_15 ;
 int CPUFAMILY_ARM_9 ;
 int CPUFAMILY_ARM_CYCLONE ;
 int CPUFAMILY_ARM_HURRICANE ;
 int CPUFAMILY_ARM_MONSOON_MISTRAL ;
 int CPUFAMILY_ARM_SWIFT ;
 int CPUFAMILY_ARM_TWISTER ;
 int CPUFAMILY_ARM_TYPHOON ;
 int CPUFAMILY_ARM_XSCALE ;
 int CPUFAMILY_UNKNOWN ;
 TYPE_2__* cpuid_info () ;

int
cpuid_get_cpufamily(void)
{
 int cpufamily = 0;

 switch (cpuid_info()->arm_info.arm_implementor) {
 case 129:
  switch (cpuid_info()->arm_info.arm_part) {
  case 141:
   cpufamily = CPUFAMILY_ARM_14;
   break;
  case 142:
   cpufamily = CPUFAMILY_ARM_13;
   break;
  case 143:
   cpufamily = CPUFAMILY_ARM_15;
   break;
  case 147:
  case 146:
   cpufamily = CPUFAMILY_ARM_11;
   break;
  case 144:
  case 145:
   cpufamily = CPUFAMILY_ARM_9;
   break;
  default:
   cpufamily = CPUFAMILY_UNKNOWN;
   break;
  }
  break;

 case 128:
  cpufamily = CPUFAMILY_ARM_XSCALE;
  break;

 case 130:
  switch (cpuid_info()->arm_info.arm_part) {
  case 135:
   cpufamily = CPUFAMILY_ARM_SWIFT;
   break;
  case 140:
   cpufamily = CPUFAMILY_ARM_CYCLONE;
   break;
  case 132:
  case 131:
   cpufamily = CPUFAMILY_ARM_TYPHOON;
   break;
  case 134:
  case 133:
   cpufamily = CPUFAMILY_ARM_TWISTER;
   break;
  case 139:
  case 138:
   cpufamily = CPUFAMILY_ARM_HURRICANE;
   break;
  case 136:
  case 137:
   cpufamily = CPUFAMILY_ARM_MONSOON_MISTRAL;
   break;
  default:
   cpufamily = CPUFAMILY_UNKNOWN;
   break;
  }
  break;

 default:
  cpufamily = CPUFAMILY_UNKNOWN;
  break;
 }

 return cpufamily;
}
