
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
__attribute__((used)) static void __GetImageTileCount(u32 fmt,u16 wd,u16 ht,u32 *xtiles,u32 *ytiles,u32 *zplanes)
{
 u32 xshift,yshift,tile;

 switch(fmt) {
  case 137:
  case 135:
  case 146:
  case 144:
  case 140:
   xshift = 3;
   yshift = 3;
   break;
  case 128:
  case 136:
  case 150:
  case 145:
  case 148:
  case 149:
  case 138:
  case 139:
   xshift = 3;
   yshift = 2;
   break;
  case 134:
  case 143:
  case 142:
  case 147:
  case 130:
  case 129:
  case 141:
  case 133:
  case 132:
  case 131:
   xshift = 2;
   yshift = 2;
   break;
  default:
   xshift = 0;
   yshift = 0;
   break;
 }

 if(!(wd&0xffff)) wd = 1;
 if(!(ht&0xffff)) ht = 1;

 wd &= 0xffff;
 tile = (wd+((1<<xshift)-1))>>xshift;
 *xtiles = tile;

 ht &= 0xffff;
 tile = (ht+((1<<yshift)-1))>>yshift;
 *ytiles = tile;

 *zplanes = 1;
 if(fmt==131 || fmt==129) *zplanes = 2;
}
