
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLEPATTERNSGISPROC ;
typedef scalar_t__ PFNGLSAMPLEMASKSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glSampleMaskSGIS ;
 scalar_t__ _funcptr_glSamplePatternSGIS ;

__attribute__((used)) static int LoadExt_SGIS_multisample()
{
 int numFailed = 0;
 _funcptr_glSampleMaskSGIS = (PFNGLSAMPLEMASKSGISPROC)IntGetProcAddress("glSampleMaskSGIS");
 if(!_funcptr_glSampleMaskSGIS) ++numFailed;
 _funcptr_glSamplePatternSGIS = (PFNGLSAMPLEPATTERNSGISPROC)IntGetProcAddress("glSamplePatternSGIS");
 if(!_funcptr_glSamplePatternSGIS) ++numFailed;
 return numFailed;
}
