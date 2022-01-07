
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gx_texobj {int tex_filt; } ;
typedef int GXTexObj ;



u8 GX_GetTexObjWrapS(GXTexObj* obj)
{
 return ((struct __gx_texobj*)obj)->tex_filt & 0x03;
}
