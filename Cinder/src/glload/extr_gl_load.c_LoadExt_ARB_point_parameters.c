
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVARBPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPointParameterfARB ;
 scalar_t__ _funcptr_glPointParameterfvARB ;

__attribute__((used)) static int LoadExt_ARB_point_parameters()
{
 int numFailed = 0;
 _funcptr_glPointParameterfARB = (PFNGLPOINTPARAMETERFARBPROC)IntGetProcAddress("glPointParameterfARB");
 if(!_funcptr_glPointParameterfARB) ++numFailed;
 _funcptr_glPointParameterfvARB = (PFNGLPOINTPARAMETERFVARBPROC)IntGetProcAddress("glPointParameterfvARB");
 if(!_funcptr_glPointParameterfvARB) ++numFailed;
 return numFailed;
}
