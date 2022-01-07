
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
  case 184:
   return "MOD_AF";
  case 130:
   return "UNDEF_PF";
  case 183:
   return "MOD_CF";
  case 176:
   return "MOD_SF";
  case 174:
   return "MOD_ZF";
  case 133:
   return "UNDEF_AF";
  case 178:
   return "MOD_PF";
  case 132:
   return "UNDEF_CF";
  case 179:
   return "MOD_OF";
  case 156:
   return "RESET_OF";
  case 160:
   return "RESET_CF";
  case 159:
   return "RESET_DF";
  case 158:
   return "RESET_IF";
  case 152:
   return "RESET_ZF";
  case 139:
   return "TEST_OF";
  case 136:
   return "TEST_SF";
  case 134:
   return "TEST_ZF";
  case 138:
   return "TEST_PF";
  case 142:
   return "TEST_CF";
  case 154:
   return "RESET_SF";
  case 161:
   return "RESET_AF";
  case 153:
   return "RESET_TF";
  case 157:
   return "RESET_NT";
  case 168:
   return "PRIOR_OF";
  case 166:
   return "PRIOR_SF";
  case 164:
   return "PRIOR_ZF";
  case 173:
   return "PRIOR_AF";
  case 167:
   return "PRIOR_PF";
  case 172:
   return "PRIOR_CF";
  case 165:
   return "PRIOR_TF";
  case 170:
   return "PRIOR_IF";
  case 171:
   return "PRIOR_DF";
  case 140:
   return "TEST_NT";
  case 141:
   return "TEST_DF";
  case 155:
   return "RESET_PF";
  case 169:
   return "PRIOR_NT";
  case 175:
   return "MOD_TF";
  case 181:
   return "MOD_IF";
  case 182:
   return "MOD_DF";
  case 180:
   return "MOD_NT";
  case 177:
   return "MOD_RF";
  case 150:
   return "SET_CF";
  case 149:
   return "SET_DF";
  case 148:
   return "SET_IF";
  case 147:
   return "SET_OF";
  case 145:
   return "SET_SF";
  case 144:
   return "SET_ZF";
  case 151:
   return "SET_AF";
  case 146:
   return "SET_PF";
  case 143:
   return "TEST_AF";
  case 135:
   return "TEST_TF";
  case 137:
   return "TEST_RF";
  case 163:
   return "RESET_0F";
  case 162:
   return "RESET_AC";
 }
}
