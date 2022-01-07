
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEINGRPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendFuncSeparateINGR ;

__attribute__((used)) static int LoadExt_INGR_blend_func_separate()
{
 int numFailed = 0;
 _funcptr_glBlendFuncSeparateINGR = (PFNGLBLENDFUNCSEPARATEINGRPROC)IntGetProcAddress("glBlendFuncSeparateINGR");
 if(!_funcptr_glBlendFuncSeparateINGR) ++numFailed;
 return numFailed;
}
