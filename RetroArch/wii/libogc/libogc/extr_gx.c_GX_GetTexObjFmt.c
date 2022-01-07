
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gx_texobj {int tex_fmt; } ;
typedef int GXTexObj ;



u32 GX_GetTexObjFmt(GXTexObj *obj)
{
 return ((struct __gx_texobj*)obj)->tex_fmt;
}
