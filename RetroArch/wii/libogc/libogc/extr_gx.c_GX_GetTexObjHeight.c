
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct __gx_texobj {int tex_size; } ;
typedef int GXTexObj ;


 scalar_t__ _SHIFTR (int,int,int) ;

u16 GX_GetTexObjHeight(GXTexObj* obj)
{
 return _SHIFTR(((struct __gx_texobj*)obj)->tex_size & 0xffc00, 10, 10) + 1;
}
