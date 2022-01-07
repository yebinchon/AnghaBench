
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gx_texobj {int tex_filt; } ;
typedef int GXTexObj ;


 int _SHIFTR (int,int,int) ;

u8 GX_GetTexObjWrapT(GXTexObj* obj)
{
 return _SHIFTR(((struct __gx_texobj*)obj)->tex_filt & 0x0c, 2, 2);
}
