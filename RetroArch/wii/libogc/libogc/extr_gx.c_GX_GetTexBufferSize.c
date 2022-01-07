
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
u32 GX_GetTexBufferSize(u16 wd,u16 ht,u32 fmt,u8 mipmap,u8 maxlod)
{
 u32 xshift,yshift,xtiles,ytiles,bitsize,size;

 switch(fmt) {
  case 137:
  case 138:
  case 147:
  case 145:
  case 141:
   xshift = 3;
   yshift = 3;
   break;
  case 128:
  case 136:
  case 135:
  case 151:
  case 146:
  case 149:
  case 150:
  case 143:
  case 148:
  case 139:
  case 140:
   xshift = 3;
   yshift = 2;
   break;
  case 134:
  case 130:
  case 129:
  case 133:
  case 132:
  case 131:
  case 142:
  case 144:
   xshift = 2;
   yshift = 2;
   break;
  default:
   xshift = 2;
   yshift = 2;
   break;
 }

 bitsize = 32;
 if(fmt==131 || fmt==129) bitsize = 64;

 size = 0;
 if(mipmap) {
  u32 cnt = (maxlod&0xff);
  while(cnt) {
   u32 w = wd&0xffff;
   u32 h = ht&0xffff;
   xtiles = ((w+(1<<xshift))-1)>>xshift;
   ytiles = ((h+(1<<yshift))-1)>>yshift;
   if(cnt==0) return size;

   size += ((xtiles*ytiles)*bitsize);
   if(w==0x0001 && h==0x0001) return size;
   if(wd>0x0001) wd = (w>>1);
   else wd = 0x0001;
   if(ht>0x0001) ht = (h>>1);
   else ht = 0x0001;

   --cnt;
  }
  return size;
 }

 wd &= 0xffff;
 xtiles = (wd+((1<<xshift)-1))>>xshift;

 ht &= 0xffff;
 ytiles = (ht+((1<<yshift)-1))>>yshift;

 size = ((xtiles*ytiles)*bitsize);

 return size;
}
