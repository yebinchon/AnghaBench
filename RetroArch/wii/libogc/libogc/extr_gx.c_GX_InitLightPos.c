
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gx_litobj {void* pz; void* py; void* px; } ;
typedef void* f32 ;
typedef int GXLightObj ;



void GX_InitLightPos(GXLightObj *lit_obj,f32 x,f32 y,f32 z)
{
 struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;

 lit->px = x;
 lit->py = y;
 lit->pz = z;
}
