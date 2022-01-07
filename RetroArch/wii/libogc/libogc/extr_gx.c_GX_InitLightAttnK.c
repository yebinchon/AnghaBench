
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_litobj {void* k2; void* k1; void* k0; } ;
typedef void* f32 ;
typedef int GXLightObj ;



void GX_InitLightAttnK(GXLightObj *lit_obj,f32 k0,f32 k1,f32 k2)
{
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;

 lit->k0 = k0;
 lit->k1 = k1;
 lit->k2 = k2;
}
