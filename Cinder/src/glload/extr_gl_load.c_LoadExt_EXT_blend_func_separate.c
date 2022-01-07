
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDFUNCSEPARATEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendFuncSeparateEXT ;

__attribute__((used)) static int LoadExt_EXT_blend_func_separate()
{
 int numFailed = 0;
 _funcptr_glBlendFuncSeparateEXT = (PFNGLBLENDFUNCSEPARATEEXTPROC)IntGetProcAddress("glBlendFuncSeparateEXT");
 if(!_funcptr_glBlendFuncSeparateEXT) ++numFailed;
 return numFailed;
}
