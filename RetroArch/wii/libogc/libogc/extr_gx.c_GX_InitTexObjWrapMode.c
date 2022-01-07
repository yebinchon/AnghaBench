
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gx_texobj {int tex_filt; } ;
typedef int GXTexObj ;


 int _SHIFTL (int,int,int) ;

void GX_InitTexObjWrapMode(GXTexObj *obj,u8 wrap_s,u8 wrap_t)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;

 ptr->tex_filt = (ptr->tex_filt&~0x03)|(wrap_s&3);
 ptr->tex_filt = (ptr->tex_filt&~0x0c)|(_SHIFTL(wrap_t,2,2));
}
