
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_texobj {int tex_maddr; } ;
typedef int GXTexObj ;


 int MEM_VIRTUAL_TO_PHYSICAL (void*) ;
 int _SHIFTR (int ,int,int) ;

void GX_InitTexObjData(GXTexObj *obj,void *img_ptr)
{
 struct __gx_texobj *ptr = (struct __gx_texobj*)obj;
 ptr->tex_maddr = (ptr->tex_maddr&~0x00ffffff)|(_SHIFTR(MEM_VIRTUAL_TO_PHYSICAL(img_ptr),5,24));
}
