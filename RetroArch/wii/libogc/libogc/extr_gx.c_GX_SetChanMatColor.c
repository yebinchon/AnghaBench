
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int s32 ;
struct TYPE_5__ {int* chnMatColor; int dirtyState; } ;
struct TYPE_4__ {int a; int b; int g; int r; } ;
typedef TYPE_1__ GXColor ;
 int _SHIFTL (int ,int,int) ;
 TYPE_2__* __gx ;

void GX_SetChanMatColor(s32 channel,GXColor color)
{
 u32 reg,val = (_SHIFTL(color.r,24,8))|(_SHIFTL(color.g,16,8))|(_SHIFTL(color.b,8,8))|0x00;
 switch(channel) {
  case 131:
   reg = 0;
   val |= (__gx->chnMatColor[0]&0xff);
   break;
  case 129:
   reg = 1;
   val |= (__gx->chnMatColor[1]&0xff);
   break;
  case 133:
   reg = 0;
   val = ((__gx->chnMatColor[0]&~0xff)|(color.a&0xff));
   break;
  case 132:
   reg = 1;
   val = ((__gx->chnMatColor[1]&~0xff)|(color.a&0xff));
   break;
  case 130:
   reg = 0;
   val |= (color.a&0xFF);
   break;
  case 128:
   reg = 1;
   val |= (color.a&0xFF);
   break;
  default:
   return;
 }

 __gx->chnMatColor[reg] = val;
 __gx->dirtyState |= (0x0400<<reg);
}
