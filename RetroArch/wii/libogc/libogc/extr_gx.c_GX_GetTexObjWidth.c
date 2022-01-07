
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct __gx_texobj {int tex_size; } ;
typedef int GXTexObj ;



u16 GX_GetTexObjWidth(GXTexObj* obj)
{
 return (((struct __gx_texobj*)obj)->tex_size & 0x3ff) + 1;
}
