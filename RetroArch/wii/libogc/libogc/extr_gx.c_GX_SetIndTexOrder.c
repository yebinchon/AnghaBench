
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* tevRasOrder; int dirtyState; } ;






 int GX_LOAD_BP_REG (int) ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

void GX_SetIndTexOrder(u8 indtexstage,u8 texcoord,u8 texmap)
{
 switch(indtexstage) {
  case 131:
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x7)|(texmap&0x7);
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x38)|(_SHIFTL(texcoord,3,3));
   break;
  case 130:
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x1C0)|(_SHIFTL(texmap,6,3));
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0xE00)|(_SHIFTL(texcoord,9,3));
   break;
  case 129:
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x7000)|(_SHIFTL(texmap,12,3));
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x38000)|(_SHIFTL(texcoord,15,3));
   break;
  case 128:
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0x1C0000)|(_SHIFTL(texmap,18,3));
   __gx->tevRasOrder[2] = (__gx->tevRasOrder[2]&~0xE00000)|(_SHIFTL(texcoord,21,3));
   break;
 }
 GX_LOAD_BP_REG(__gx->tevRasOrder[2]);
 __gx->dirtyState |= 0x0003;
}
