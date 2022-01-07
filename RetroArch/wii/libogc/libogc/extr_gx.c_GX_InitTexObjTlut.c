
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gx_texobj {int tex_tlut; } ;
typedef int GXTexObj ;



void GX_InitTexObjTlut(GXTexObj *obj,u32 tlut_name)
{
 ((struct __gx_texobj*)obj)->tex_tlut = tlut_name;
}
