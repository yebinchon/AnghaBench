
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int csh ;
typedef int cs_mode ;
struct TYPE_18__ {TYPE_1__* detail; } ;
typedef TYPE_2__ cs_insn ;
typedef int cs_arch ;
struct TYPE_17__ {int groups_count; int * groups; } ;
 char* cs_group_name (int ,int ) ;
 int print_insn_detail_arm (int ,TYPE_2__*) ;
 int print_insn_detail_arm64 (int ,TYPE_2__*) ;
 int print_insn_detail_evm (int ,TYPE_2__*) ;
 int print_insn_detail_m680x (int ,TYPE_2__*) ;
 int print_insn_detail_m68k (int ,TYPE_2__*) ;
 int print_insn_detail_mips (int ,TYPE_2__*) ;
 int print_insn_detail_mos65xx (int ,TYPE_2__*) ;
 int print_insn_detail_ppc (int ,TYPE_2__*) ;
 int print_insn_detail_sparc (int ,TYPE_2__*) ;
 int print_insn_detail_sysz (int ,TYPE_2__*) ;
 int print_insn_detail_tms320c64x (int ,TYPE_2__*) ;
 int print_insn_detail_x86 (int ,int ,TYPE_2__*) ;
 int print_insn_detail_xcore (int ,TYPE_2__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_details(csh handle, cs_arch arch, cs_mode md, cs_insn *ins)
{
 switch(arch) {
  case 129:
   print_insn_detail_x86(handle, md, ins);
   break;
  case 140:
   print_insn_detail_arm(handle, ins);
   break;
  case 139:
   print_insn_detail_arm64(handle, ins);
   break;
  case 135:
   print_insn_detail_mips(handle, ins);
   break;
  case 133:
   print_insn_detail_ppc(handle, ins);
   break;
  case 132:
   print_insn_detail_sparc(handle, ins);
   break;
  case 131:
   print_insn_detail_sysz(handle, ins);
   break;
  case 128:
   print_insn_detail_xcore(handle, ins);
   break;
  case 136:
   print_insn_detail_m68k(handle, ins);
   break;
  case 130:
   print_insn_detail_tms320c64x(handle, ins);
   break;
  case 137:
   print_insn_detail_m680x(handle, ins);
   break;
  case 138:
   print_insn_detail_evm(handle, ins);
   break;
  case 134:
   print_insn_detail_mos65xx(handle, ins);
   break;
  default: break;
 }

 if (ins->detail->groups_count) {
  int j;

  printf("\tGroups: ");
  for(j = 0; j < ins->detail->groups_count; j++) {
   printf("%s ", cs_group_name(handle, ins->detail->groups[j]));
  }
  printf("\n");
 }

 printf("\n");
}
