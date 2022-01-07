
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_litobj {void* a2; void* a1; void* a0; } ;
typedef void* f32 ;
typedef int GXLightObj ;



void GX_InitLightAttnA(GXLightObj *lit_obj,f32 a0,f32 a1,f32 a2)
{
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;

 lit->a0 = a0;
 lit->a1 = a1;
 lit->a2 = a2;
}
