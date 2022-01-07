
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct __gx_texobj {int tex_filt; int tex_flag; int tex_fmt; int tex_size; int tex_maddr; int tex_tile_type; int tex_tile_cnt; } ;
typedef int GXTexObj ;
 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int ,int,int) ;
 int memset (int *,int ,int) ;

void GX_InitTexObj(GXTexObj *obj,void *img_ptr,u16 wd,u16 ht,u8 fmt,u8 wrap_s,u8 wrap_t,u8 mipmap)
{
 u32 nwd,nht;
 u32 xshift,yshift;
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;

 if(!obj) return;

 memset(obj,0,sizeof(GXTexObj));

 ptr->tex_filt = (ptr->tex_filt&~0x03)|(wrap_s&3);
 ptr->tex_filt = (ptr->tex_filt&~0x0c)|(_SHIFTL(wrap_t,2,2));
 ptr->tex_filt = (ptr->tex_filt&~0x10)|0x10;

 if(mipmap) {
  ptr->tex_flag |= 0x01;
  if(fmt==137 || fmt==136 || fmt==138)
   ptr->tex_filt = (ptr->tex_filt&~0xe0)|0x00a0;
  else
   ptr->tex_filt = (ptr->tex_filt&~0xe0)|0x00c0;
 } else
  ptr->tex_filt= (ptr->tex_filt&~0xE0)|0x0080;

 ptr->tex_fmt = fmt;
 ptr->tex_size = (ptr->tex_size&~0x3ff)|((wd-1)&0x3ff);
 ptr->tex_size = (ptr->tex_size&~0xFFC00)|(_SHIFTL((ht-1),10,10));
 ptr->tex_size = (ptr->tex_size&~0xF00000)|(_SHIFTL(fmt,20,4));
 ptr->tex_maddr = (ptr->tex_maddr&~0x00ffffff)|(_SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(img_ptr),5,24));

 switch(fmt) {
  case 134:
  case 137:
   xshift = 3;
   yshift = 3;
   ptr->tex_tile_type = 1;
   break;
  case 133:
  case 132:
  case 136:
   xshift = 3;
   yshift = 2;
   ptr->tex_tile_type = 2;
   break;
  case 131:
  case 130:
  case 129:
  case 128:
   xshift = 2;
   yshift = 2;
   ptr->tex_tile_type = 2;
   break;
  case 138:
   xshift = 2;
   yshift = 2;
   ptr->tex_tile_type = 3;
   break;
  case 135:
   xshift = 3;
   yshift = 3;
   ptr->tex_tile_type = 0;
   break;
  default:
   xshift = 2;
   yshift = 2;
   ptr->tex_tile_type = 2;
   break;
 }

 nwd = ((wd+(1<<xshift))-1)>>xshift;
 nht = ((ht+(1<<yshift))-1)>>yshift;
 ptr->tex_tile_cnt = (nwd*nht)&0x7fff;

 ptr->tex_flag |= 0x0002;
}
