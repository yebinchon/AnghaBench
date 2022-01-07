
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_litobj {void* k2; void* k1; void* k0; void* a2; void* a1; void* a0; } ;
typedef void* f32 ;
typedef int GXLightObj ;



void GX_InitLightAttn(GXLightObj *lit_obj,f32 a0,f32 a1,f32 a2,f32 k0,f32 k1,f32 k2)
{
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;

 lit->a0 = a0;
 lit->a1 = a1;
 lit->a2 = a2;
 lit->k0 = k0;
 lit->k1 = k1;
 lit->k2 = k2;
}
