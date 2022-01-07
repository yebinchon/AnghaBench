
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDEQUATIONSEPARATEEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendEquationSeparateEXT ;

__attribute__((used)) static int LoadExt_EXT_blend_equation_separate()
{
 int numFailed = 0;
 _funcptr_glBlendEquationSeparateEXT = (PFNGLBLENDEQUATIONSEPARATEEXTPROC)IntGetProcAddress("glBlendEquationSeparateEXT");
 if(!_funcptr_glBlendEquationSeparateEXT) ++numFailed;
 return numFailed;
}
