
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
__attribute__((used)) static const char *get_eflag_name(uint64_t flag)
{
 switch(flag) {
  default:
   return ((void*)0);
  case 131:
   return "UNDEF_OF";
  case 129:
   return "UNDEF_SF";
  case 128:
   return "UNDEF_ZF";
  case 173:
   return "MOD_AF";
  case 130:
   return "UNDEF_PF";
  case 172:
   return "MOD_CF";
  case 165:
   return "MOD_SF";
  case 163:
   return "MOD_ZF";
  case 133:
   return "UNDEF_AF";
  case 167:
   return "MOD_PF";
  case 132:
   return "UNDEF_CF";
  case 168:
   return "MOD_OF";
  case 147:
   return "RESET_OF";
  case 151:
   return "RESET_CF";
  case 150:
   return "RESET_DF";
  case 149:
   return "RESET_IF";
  case 137:
   return "TEST_OF";
  case 135:
   return "TEST_SF";
  case 134:
   return "TEST_ZF";
  case 136:
   return "TEST_PF";
  case 140:
   return "TEST_CF";
  case 145:
   return "RESET_SF";
  case 152:
   return "RESET_AF";
  case 144:
   return "RESET_TF";
  case 148:
   return "RESET_NT";
  case 157:
   return "PRIOR_OF";
  case 155:
   return "PRIOR_SF";
  case 153:
   return "PRIOR_ZF";
  case 162:
   return "PRIOR_AF";
  case 156:
   return "PRIOR_PF";
  case 161:
   return "PRIOR_CF";
  case 154:
   return "PRIOR_TF";
  case 159:
   return "PRIOR_IF";
  case 160:
   return "PRIOR_DF";
  case 138:
   return "TEST_NT";
  case 139:
   return "TEST_DF";
  case 146:
   return "RESET_PF";
  case 158:
   return "PRIOR_NT";
  case 164:
   return "MOD_TF";
  case 170:
   return "MOD_IF";
  case 171:
   return "MOD_DF";
  case 169:
   return "MOD_NT";
  case 166:
   return "MOD_RF";
  case 143:
   return "SET_CF";
  case 142:
   return "SET_DF";
  case 141:
   return "SET_IF";
 }
}
