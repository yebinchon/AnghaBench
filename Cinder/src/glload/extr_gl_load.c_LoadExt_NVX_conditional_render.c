
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLENDCONDITIONALRENDERNVXPROC ;
typedef scalar_t__ PFNGLBEGINCONDITIONALRENDERNVXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBeginConditionalRenderNVX ;
 scalar_t__ _funcptr_glEndConditionalRenderNVX ;

__attribute__((used)) static int LoadExt_NVX_conditional_render()
{
 int numFailed = 0;
 _funcptr_glBeginConditionalRenderNVX = (PFNGLBEGINCONDITIONALRENDERNVXPROC)IntGetProcAddress("glBeginConditionalRenderNVX");
 if(!_funcptr_glBeginConditionalRenderNVX) ++numFailed;
 _funcptr_glEndConditionalRenderNVX = (PFNGLENDCONDITIONALRENDERNVXPROC)IntGetProcAddress("glEndConditionalRenderNVX");
 if(!_funcptr_glEndConditionalRenderNVX) ++numFailed;
 return numFailed;
}
