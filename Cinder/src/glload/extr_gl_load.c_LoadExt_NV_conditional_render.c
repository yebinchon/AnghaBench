
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLENDCONDITIONALRENDERNVPROC ;
typedef scalar_t__ PFNGLBEGINCONDITIONALRENDERNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBeginConditionalRenderNV ;
 scalar_t__ _funcptr_glEndConditionalRenderNV ;

__attribute__((used)) static int LoadExt_NV_conditional_render()
{
 int numFailed = 0;
 _funcptr_glBeginConditionalRenderNV = (PFNGLBEGINCONDITIONALRENDERNVPROC)IntGetProcAddress("glBeginConditionalRenderNV");
 if(!_funcptr_glBeginConditionalRenderNV) ++numFailed;
 _funcptr_glEndConditionalRenderNV = (PFNGLENDCONDITIONALRENDERNVPROC)IntGetProcAddress("glEndConditionalRenderNV");
 if(!_funcptr_glEndConditionalRenderNV) ++numFailed;
 return numFailed;
}
