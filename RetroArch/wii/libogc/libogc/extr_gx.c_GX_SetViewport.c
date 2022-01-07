
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int f32 ;


 int GX_SetViewportJitter (int ,int ,int ,int ,int ,int ,int) ;

void GX_SetViewport(f32 xOrig,f32 yOrig,f32 wd,f32 ht,f32 nearZ,f32 farZ)
{
 GX_SetViewportJitter(xOrig,yOrig,wd,ht,nearZ,farZ,1);
}
