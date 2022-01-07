
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_3__ {size_t dtdo_len; int * dtdo_buf; } ;
typedef TYPE_1__ dtrace_difo_t ;
typedef int dif_instr_t ;


 size_t DIF_INSTR_OP (int ) ;
 size_t DIF_INSTR_SUBR (int ) ;
 size_t DIF_INSTR_VAR (int ) ;
 size_t DIF_SUBR_ALLOCA ;
 size_t DIF_SUBR_BCOPY ;
 size_t DIF_SUBR_COPYIN ;
 size_t DIF_SUBR_COPYINSTR ;
 size_t DIF_SUBR_COPYINTO ;
 size_t DIF_SUBR_HTONL ;
 size_t DIF_SUBR_HTONLL ;
 size_t DIF_SUBR_HTONS ;
 size_t DIF_SUBR_INDEX ;
 size_t DIF_SUBR_INET_NTOA ;
 size_t DIF_SUBR_INET_NTOA6 ;
 size_t DIF_SUBR_INET_NTOP ;
 size_t DIF_SUBR_KDEBUG_TRACE ;
 size_t DIF_SUBR_KDEBUG_TRACE_STRING ;
 size_t DIF_SUBR_LLTOSTR ;
 size_t DIF_SUBR_NTOHL ;
 size_t DIF_SUBR_NTOHLL ;
 size_t DIF_SUBR_NTOHS ;
 size_t DIF_SUBR_RINDEX ;
 size_t DIF_SUBR_STRCHR ;
 size_t DIF_SUBR_STRJOIN ;
 size_t DIF_SUBR_STRRCHR ;
 size_t DIF_SUBR_STRSTR ;
 size_t DIF_VAR_ARG0 ;
 size_t DIF_VAR_ARG9 ;
 size_t DIF_VAR_CURTHREAD ;
 size_t DIF_VAR_EXECNAME ;
 size_t DIF_VAR_GID ;
 size_t DIF_VAR_OTHER_UBASE ;
 size_t DIF_VAR_PID ;
 size_t DIF_VAR_PPID ;
 size_t DIF_VAR_TID ;
 size_t DIF_VAR_UID ;
 size_t DIF_VAR_ZONENAME ;
 int dtrace_difo_err (uint_t,char const*) ;

__attribute__((used)) static int
dtrace_difo_validate_helper(dtrace_difo_t *dp)
{
 int (*efunc)(uint_t pc, const char *, ...) = dtrace_difo_err;
 int err = 0;
 uint_t pc;

 for (pc = 0; pc < dp->dtdo_len; pc++) {
  dif_instr_t instr = dp->dtdo_buf[pc];

  uint_t v = DIF_INSTR_VAR(instr);
  uint_t subr = DIF_INSTR_SUBR(instr);
  uint_t op = DIF_INSTR_OP(instr);

  switch (op) {
  case 168:
  case 128:
  case 195:
  case 152:
  case 149:
  case 151:
  case 139:
  case 197:
  case 171:
  case 155:
  case 137:
  case 150:
  case 129:
  case 181:
  case 169:
  case 172:
  case 163:
  case 162:
  case 161:
  case 160:
  case 159:
  case 158:
  case 157:
  case 136:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 148:
  case 145:
  case 141:
  case 140:
  case 196:
  case 182:
  case 156:
  case 138:
  case 194:
  case 193:
  case 184:
  case 192:
  case 189:
  case 191:
  case 190:
  case 188:
  case 185:
  case 187:
  case 186:
  case 164:
  case 170:
  case 167:
  case 180:
  case 153:
  case 154:
  case 179:
  case 176:
  case 146:
  case 144:
  case 166:
  case 165:
   break;

  case 177:
   if (v >= DIF_VAR_OTHER_UBASE)
    break;

   if (v >= DIF_VAR_ARG0 && v <= DIF_VAR_ARG9)
    break;

   if (v == DIF_VAR_CURTHREAD || v == DIF_VAR_PID ||
       v == DIF_VAR_PPID || v == DIF_VAR_TID ||
       v == DIF_VAR_EXECNAME || v == DIF_VAR_ZONENAME ||
       v == DIF_VAR_UID || v == DIF_VAR_GID)
    break;

   err += efunc(pc, "illegal variable %u\n", v);
   break;

  case 175:
  case 173:
  case 178:
  case 174:
   err += efunc(pc, "illegal dynamic variable load\n");
   break;

  case 142:
  case 147:
  case 143:
   err += efunc(pc, "illegal dynamic variable store\n");
   break;

  case 183:
   if (subr == DIF_SUBR_ALLOCA ||
       subr == DIF_SUBR_BCOPY ||
       subr == DIF_SUBR_COPYIN ||
       subr == DIF_SUBR_COPYINTO ||
       subr == DIF_SUBR_COPYINSTR ||
       subr == DIF_SUBR_INDEX ||
       subr == DIF_SUBR_INET_NTOA ||
       subr == DIF_SUBR_INET_NTOA6 ||
       subr == DIF_SUBR_INET_NTOP ||
       subr == DIF_SUBR_LLTOSTR ||
       subr == DIF_SUBR_RINDEX ||
       subr == DIF_SUBR_STRCHR ||
       subr == DIF_SUBR_STRJOIN ||
       subr == DIF_SUBR_STRRCHR ||
       subr == DIF_SUBR_STRSTR ||
       subr == DIF_SUBR_KDEBUG_TRACE ||
       subr == DIF_SUBR_KDEBUG_TRACE_STRING ||
       subr == DIF_SUBR_HTONS ||
       subr == DIF_SUBR_HTONL ||
       subr == DIF_SUBR_HTONLL ||
       subr == DIF_SUBR_NTOHS ||
       subr == DIF_SUBR_NTOHL ||
       subr == DIF_SUBR_NTOHLL)
    break;

   err += efunc(pc, "invalid subr %u\n", subr);
   break;

  default:
   err += efunc(pc, "invalid opcode %u\n",
       DIF_INSTR_OP(instr));
  }
 }

 return (err);
}
