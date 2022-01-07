
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSAMPLECOVERAGEARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glSampleCoverageARB ;

__attribute__((used)) static int LoadExt_ARB_multisample()
{
 int numFailed = 0;
 _funcptr_glSampleCoverageARB = (PFNGLSAMPLECOVERAGEARBPROC)IntGetProcAddress("glSampleCoverageARB");
 if(!_funcptr_glSampleCoverageARB) ++numFailed;
 return numFailed;
}
