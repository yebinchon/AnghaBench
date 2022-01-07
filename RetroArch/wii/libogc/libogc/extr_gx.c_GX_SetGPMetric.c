
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int perf0Mode; int perf1Mode; int cpPerfMode; } ;


 int GX_LOAD_BP_REG (int) ;
 int GX_LOAD_CP_REG (int,int) ;
 int GX_LOAD_XF_REG (int,int) ;
 TYPE_1__* __gx ;
 int* _cpReg ;

void GX_SetGPMetric(u32 perf0,u32 perf1)
{

 if(__gx->perf0Mode>=174 && __gx->perf0Mode<180)
  GX_LOAD_BP_REG(0x23000000);
 else if(__gx->perf0Mode>=180 && __gx->perf0Mode<182)
  GX_LOAD_BP_REG(0x24000000);
 else if(__gx->perf0Mode>=158 && __gx->perf0Mode<=182)
  GX_LOAD_XF_REG(0x1006,0);


 if(__gx->perf1Mode>=135 && __gx->perf1Mode<147) {
  __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0);
  GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
 } else if(__gx->perf1Mode>=147 && __gx->perf1Mode<149) {
  _cpReg[3] = 0;
 } else if(__gx->perf1Mode>=140 && __gx->perf1Mode<=149) {
  GX_LOAD_BP_REG(0x67000000);
 }

 __gx->perf0Mode = perf0;
 switch(__gx->perf0Mode) {
  case 182:
   GX_LOAD_XF_REG(0x1006,0x00000273);
   break;
  case 158:
   GX_LOAD_XF_REG(0x1006,0x0000014a);
   break;
  case 183:
   GX_LOAD_XF_REG(0x1006,0x0000016b);
   break;
  case 185:
   GX_LOAD_XF_REG(0x1006,0x00000084);
   break;
  case 153:
   GX_LOAD_XF_REG(0x1006,0x000000c6);
   break;
  case 152:
   GX_LOAD_XF_REG(0x1006,0x00000210);
   break;
  case 151:
   GX_LOAD_XF_REG(0x1006,0x00000252);
   break;
  case 156:
   GX_LOAD_XF_REG(0x1006,0x00000231);
   break;
  case 157:
   GX_LOAD_XF_REG(0x1006,0x000001ad);
   break;
  case 155:
   GX_LOAD_XF_REG(0x1006,0x000001ce);
   break;
  case 154:
   GX_LOAD_XF_REG(0x1006,0x00000021);
   break;
  case 184:
   GX_LOAD_XF_REG(0x1006,0x00000153);
   break;
  case 174:
   GX_LOAD_BP_REG(0x2300AE7F);
   break;
  case 161:
   GX_LOAD_BP_REG(0x23008E7F);
   break;
  case 160:
   GX_LOAD_BP_REG(0x23009E7F);
   break;
  case 159:
   GX_LOAD_BP_REG(0x23001E7F);
   break;
  case 172:
   GX_LOAD_BP_REG(0x2300AC3F);
   break;
  case 170:
   GX_LOAD_BP_REG(0x2300AC7F);
   break;
  case 168:
   GX_LOAD_BP_REG(0x2300ACBF);
   break;
  case 167:
   GX_LOAD_BP_REG(0x2300ACFF);
   break;
  case 166:
   GX_LOAD_BP_REG(0x2300AD3F);
   break;
  case 165:
   GX_LOAD_BP_REG(0x2300AD7F);
   break;
  case 164:
   GX_LOAD_BP_REG(0x2300ADBF);
   break;
  case 163:
   GX_LOAD_BP_REG(0x2300ADFF);
   break;
  case 162:
   GX_LOAD_BP_REG(0x2300AE3F);
   break;
  case 173:
   GX_LOAD_BP_REG(0x2300A27F);
   break;
  case 171:
   GX_LOAD_BP_REG(0x2300A67F);
   break;
  case 169:
   GX_LOAD_BP_REG(0x2300AA7F);
   break;
  case 180:
   GX_LOAD_BP_REG(0x2402C0C6);
   break;
  case 175:
   GX_LOAD_BP_REG(0x2402C16B);
   break;
  case 179:
   GX_LOAD_BP_REG(0x2402C0E7);
   break;
  case 178:
   GX_LOAD_BP_REG(0x2402C108);
   break;
  case 177:
   GX_LOAD_BP_REG(0x2402C129);
   break;
  case 176:
   GX_LOAD_BP_REG(0x2402C14A);
   break;
  case 186:
   GX_LOAD_BP_REG(0x2402C1AD);
   break;
  case 181:
   break;
 }

 __gx->perf1Mode = perf1;
 switch(__gx->perf1Mode) {
  case 149:
   GX_LOAD_BP_REG(0x67000042);
   break;
  case 140:
   GX_LOAD_BP_REG(0x67000084);
   break;
  case 139:
   GX_LOAD_BP_REG(0x67000063);
   break;
  case 137:
   GX_LOAD_BP_REG(0x67000129);
   break;
  case 138:
   GX_LOAD_BP_REG(0x67000252);
   break;
  case 145:
   GX_LOAD_BP_REG(0x67000021);
   break;
  case 144:
   GX_LOAD_BP_REG(0x6700014b);
   break;
  case 143:
   GX_LOAD_BP_REG(0x6700018d);
   break;
  case 142:
   GX_LOAD_BP_REG(0x670001cf);
   break;
  case 141:
   GX_LOAD_BP_REG(0x67000211);
   break;
  case 135:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x20;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 133:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x30;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 134:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x40;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 130:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x50;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 132:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x60;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 129:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x70;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 136:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x90;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 128:
   __gx->cpPerfMode = (__gx->cpPerfMode&~0xf0)|0x80;
   GX_LOAD_CP_REG(0x20,__gx->cpPerfMode);
   break;
  case 147:
   _cpReg[3] = 2;
   break;
  case 150:
   _cpReg[3] = 3;
   break;
  case 131:
   _cpReg[3] = 4;
   break;
  case 148:
   _cpReg[3] = 5;
   break;
  case 146:
   break;
 }

}
