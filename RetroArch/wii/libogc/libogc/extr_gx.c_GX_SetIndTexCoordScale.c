
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* tevRasOrder; } ;






 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetIndTexCoordScale(u8 indtexid,u8 scale_s,u8 scale_t)
{
 switch(indtexid) {
  case 131:
   __gx->tevRasOrder[0] = (__gx->tevRasOrder[0]&~0x0f)|(scale_s&0x0f);
   __gx->tevRasOrder[0] = (__gx->tevRasOrder[0]&~0xF0)|(_SHIFTL(scale_t,4,4));
   GX_LOAD_BP_REG(__gx->tevRasOrder[0]);
   break;
  case 130:
   __gx->tevRasOrder[0] = (__gx->tevRasOrder[0]&~0xF00)|(_SHIFTL(scale_s,8,4));
   __gx->tevRasOrder[0] = (__gx->tevRasOrder[0]&~0xF000)|(_SHIFTL(scale_t,12,4));
   GX_LOAD_BP_REG(__gx->tevRasOrder[0]);
   break;
  case 129:
   __gx->tevRasOrder[1] = (__gx->tevRasOrder[1]&~0x0f)|(scale_s&0x0f);
   __gx->tevRasOrder[1] = (__gx->tevRasOrder[1]&~0xF0)|(_SHIFTL(scale_t,4,4));
   GX_LOAD_BP_REG(__gx->tevRasOrder[1]);
   break;
  case 128:
   __gx->tevRasOrder[1] = (__gx->tevRasOrder[1]&~0xF00)|(_SHIFTL(scale_s,8,4));
   __gx->tevRasOrder[1] = (__gx->tevRasOrder[1]&~0xF000)|(_SHIFTL(scale_t,12,4));
   GX_LOAD_BP_REG(__gx->tevRasOrder[1]);
   break;
 }
}
