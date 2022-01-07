
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLBLENDCOLOREXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBlendColorEXT ;

__attribute__((used)) static int LoadExt_EXT_blend_color()
{
 int numFailed = 0;
 _funcptr_glBlendColorEXT = (PFNGLBLENDCOLOREXTPROC)IntGetProcAddress("glBlendColorEXT");
 if(!_funcptr_glBlendColorEXT) ++numFailed;
 return numFailed;
}
