
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int U8; int U32; } ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* wgPipe ;

void GX_LoadLightObjIdx(u32 litobjidx,u8 litid)
{
 u32 reg;
 u32 idx = 0;

 switch(litid) {
  case 135:
   idx = 0;
   break;
  case 134:
   idx = 1;
   break;
  case 133:
   idx = 2;
   break;
  case 132:
   idx = 3;
   break;
  case 131:
   idx = 4;
   break;
  case 130:
   idx = 5;
   break;
  case 129:
   idx = 6;
   break;
  case 128:
   idx = 7;
   break;
  default:
   idx = 0;
   break;

 }

 reg = 0xf600|(_SHIFTL(idx,4,8));
 reg = (reg&~0xffff0000)|(_SHIFTL(litobjidx,16,16));

 wgPipe->U8 = 0x38;
 wgPipe->U32 = reg;
}
