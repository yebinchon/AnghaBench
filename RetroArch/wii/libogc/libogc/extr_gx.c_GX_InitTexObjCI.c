
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct __gx_texobj {int tex_flag; int tex_tlut; } ;
typedef int GXTexObj ;


 int GX_InitTexObj (int *,void*,int ,int ,int ,int ,int ,int ) ;

void GX_InitTexObjCI(GXTexObj *obj,void *img_ptr,u16 wd,u16 ht,u8 fmt,u8 wrap_s,u8 wrap_t,u8 mipmap,u32 tlut_name)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;

 GX_InitTexObj(obj,img_ptr,wd,ht,fmt,wrap_s,wrap_t,mipmap);
 ptr->tex_flag &= ~0x02;
 ptr->tex_tlut = tlut_name;
}
