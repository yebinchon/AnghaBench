
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int function ;
 int get_detail_arm ;
 int get_detail_arm64 ;
 int get_detail_evm ;
 int get_detail_m680x ;
 int get_detail_m68k ;
 int get_detail_mips ;
 int get_detail_mos65xx ;
 int get_detail_ppc ;
 int get_detail_sparc ;
 int get_detail_sysz ;
 int get_detail_tms320c64x ;
 int get_detail_x86 ;
 int get_detail_xcore ;

int set_function(int arch)
{
 switch(arch) {
  case 140:
   function = get_detail_arm;
   break;
  case 139:
   function = get_detail_arm64;
   break;
  case 135:
   function = get_detail_mips;
   break;
  case 133:
   function = get_detail_ppc;
   break;
  case 132:
   function = get_detail_sparc;
   break;
  case 131:
   function = get_detail_sysz;
   break;
  case 129:
   function = get_detail_x86;
   break;
  case 128:
   function = get_detail_xcore;
   break;
  case 136:
   function = get_detail_m68k;
   break;
  case 137:
   function = get_detail_m680x;
   break;
  case 138:
   function = get_detail_evm;
   break;
  case 134:
   function = get_detail_mos65xx;
   break;
  case 130:
   function = get_detail_tms320c64x;
   break;
  default:
   return -1;
 }
 return 0;
}
