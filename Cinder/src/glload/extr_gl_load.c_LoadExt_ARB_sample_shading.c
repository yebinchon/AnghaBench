
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMINSAMPLESHADINGARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glMinSampleShadingARB ;

__attribute__((used)) static int LoadExt_ARB_sample_shading()
{
 int numFailed = 0;
 _funcptr_glMinSampleShadingARB = (PFNGLMINSAMPLESHADINGARBPROC)IntGetProcAddress("glMinSampleShadingARB");
 if(!_funcptr_glMinSampleShadingARB) ++numFailed;
 return numFailed;
}
