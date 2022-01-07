
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLMAKECONTEXTCURRENTARBPROC ;
typedef scalar_t__ PFNWGLGETCURRENTREADDCARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglGetCurrentReadDCARB ;
 scalar_t__ _funcptr_wglMakeContextCurrentARB ;

__attribute__((used)) static int LoadExt_ARB_make_current_read()
{
 int numFailed = 0;
 _funcptr_wglGetCurrentReadDCARB = (PFNWGLGETCURRENTREADDCARBPROC)IntGetProcAddress("wglGetCurrentReadDCARB");
 if(!_funcptr_wglGetCurrentReadDCARB) ++numFailed;
 _funcptr_wglMakeContextCurrentARB = (PFNWGLMAKECONTEXTCURRENTARBPROC)IntGetProcAddress("wglMakeContextCurrentARB");
 if(!_funcptr_wglMakeContextCurrentARB) ++numFailed;
 return numFailed;
}
