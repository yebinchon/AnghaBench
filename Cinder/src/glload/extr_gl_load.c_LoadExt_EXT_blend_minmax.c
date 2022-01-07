
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDEQUATIONEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendEquationEXT ;

__attribute__((used)) static int LoadExt_EXT_blend_minmax()
{
 int numFailed = 0;
 _funcptr_glBlendEquationEXT = (PFNGLBLENDEQUATIONEXTPROC)IntGetProcAddress("glBlendEquationEXT");
 if(!_funcptr_glBlendEquationEXT) ++numFailed;
 return numFailed;
}
