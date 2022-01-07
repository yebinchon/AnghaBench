
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLEPATTERNEXTPROC ;
typedef scalar_t__ PFNGLSAMPLEMASKEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glSampleMaskEXT ;
 scalar_t__ _funcptr_glSamplePatternEXT ;

__attribute__((used)) static int LoadExt_EXT_multisample()
{
 int numFailed = 0;
 _funcptr_glSampleMaskEXT = (PFNGLSAMPLEMASKEXTPROC)IntGetProcAddress("glSampleMaskEXT");
 if(!_funcptr_glSampleMaskEXT) ++numFailed;
 _funcptr_glSamplePatternEXT = (PFNGLSAMPLEPATTERNEXTPROC)IntGetProcAddress("glSamplePatternEXT");
 if(!_funcptr_glSamplePatternEXT) ++numFailed;
 return numFailed;
}
