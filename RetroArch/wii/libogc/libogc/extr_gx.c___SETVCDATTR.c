
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int vcdLo; int vcdNrms; int vcdHi; } ;
 int _SHIFTL (int,int,int) ;
 TYPE_1__* __gx ;

__attribute__((used)) static __inline__ void __SETVCDATTR(u8 attr,u8 type)
{
 switch(attr) {
  case 144:
   __gx->vcdLo = (__gx->vcdLo&~0x1)|(type&0x1);
   break;
  case 142:
   __gx->vcdLo = (__gx->vcdLo&~0x2)|(_SHIFTL(type,1,1));
   break;
  case 140:
   __gx->vcdLo = (__gx->vcdLo&~0x4)|(_SHIFTL(type,2,1));
   break;
  case 138:
   __gx->vcdLo = (__gx->vcdLo&~0x8)|(_SHIFTL(type,3,1));
   break;
  case 136:
   __gx->vcdLo = (__gx->vcdLo&~0x10)|(_SHIFTL(type,4,1));
   break;
  case 134:
   __gx->vcdLo = (__gx->vcdLo&~0x20)|(_SHIFTL(type,5,1));
   break;
  case 132:
   __gx->vcdLo = (__gx->vcdLo&~0x40)|(_SHIFTL(type,6,1));
   break;
  case 130:
   __gx->vcdLo = (__gx->vcdLo&~0x80)|(_SHIFTL(type,7,1));
   break;
  case 128:
   __gx->vcdLo = (__gx->vcdLo&~0x100)|(_SHIFTL(type,8,1));
   break;
  case 145:
   __gx->vcdLo = (__gx->vcdLo&~0x600)|(_SHIFTL(type,9,2));
   break;
  case 146:
   __gx->vcdLo = (__gx->vcdLo&~0x1800)|(_SHIFTL(type,11,2));
   __gx->vcdNrms = 1;
   break;
  case 147:
   __gx->vcdLo = (__gx->vcdLo&~0x1800)|(_SHIFTL(type,11,2));
   __gx->vcdNrms = 2;
   break;
  case 149:
   __gx->vcdLo = (__gx->vcdLo&~0x6000)|(_SHIFTL(type,13,2));
   break;
  case 148:
   __gx->vcdLo = (__gx->vcdLo&~0x18000)|(_SHIFTL(type,15,2));
   break;
  case 143:
   __gx->vcdHi = (__gx->vcdHi&~0x3)|(type&0x3);
   break;
  case 141:
   __gx->vcdHi = (__gx->vcdHi&~0xc)|(_SHIFTL(type,2,2));
   break;
  case 139:
   __gx->vcdHi = (__gx->vcdHi&~0x30)|(_SHIFTL(type,4,2));
   break;
  case 137:
   __gx->vcdHi = (__gx->vcdHi&~0xc0)|(_SHIFTL(type,6,2));
   break;
  case 135:
   __gx->vcdHi = (__gx->vcdHi&~0x300)|(_SHIFTL(type,8,2));
   break;
  case 133:
   __gx->vcdHi = (__gx->vcdHi&~0xc00)|(_SHIFTL(type,10,2));
   break;
  case 131:
   __gx->vcdHi = (__gx->vcdHi&~0x3000)|(_SHIFTL(type,12,2));
   break;
  case 129:
   __gx->vcdHi = (__gx->vcdHi&~0xc000)|(_SHIFTL(type,14,2));
   break;
 }
}
