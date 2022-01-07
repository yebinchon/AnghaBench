
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
__attribute__((used)) static const char *get_fpu_flag_name(uint64_t flag)
{
 switch (flag) {
  default:
   return ((void*)0);
  case 147:
   return "MOD_C0";
  case 146:
   return "MOD_C1";
  case 145:
   return "MOD_C2";
  case 144:
   return "MOD_C3";
  case 143:
   return "RESET_C0";
  case 142:
   return "RESET_C1";
  case 141:
   return "RESET_C2";
  case 140:
   return "RESET_C3";
  case 139:
   return "SET_C0";
  case 138:
   return "SET_C1";
  case 137:
   return "SET_C2";
  case 136:
   return "SET_C3";
  case 131:
   return "UNDEF_C0";
  case 130:
   return "UNDEF_C1";
  case 129:
   return "UNDEF_C2";
  case 128:
   return "UNDEF_C3";
  case 135:
   return "TEST_C0";
  case 134:
   return "TEST_C1";
  case 133:
   return "TEST_C2";
  case 132:
   return "TEST_C3";
 }
}
