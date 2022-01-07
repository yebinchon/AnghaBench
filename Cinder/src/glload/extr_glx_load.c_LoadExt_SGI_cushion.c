
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCUSHIONSGIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXCushionSGI ;

__attribute__((used)) static int LoadExt_SGI_cushion()
{
 int numFailed = 0;
 _funcptr_glXCushionSGI = (PFNGLXCUSHIONSGIPROC)IntGetProcAddress("glXCushionSGI");
 if(!_funcptr_glXCushionSGI) ++numFailed;
 return numFailed;
}
