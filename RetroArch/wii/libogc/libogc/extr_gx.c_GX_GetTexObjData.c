
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_texobj {int tex_maddr; } ;
typedef int GXTexObj ;


 scalar_t__ _SHIFTL (int,int,int) ;

void* GX_GetTexObjData(GXTexObj *obj)
{
 return (void*)(_SHIFTL(((struct __gx_texobj*)obj)->tex_maddr & 0x00ffffff,5,24));
}
