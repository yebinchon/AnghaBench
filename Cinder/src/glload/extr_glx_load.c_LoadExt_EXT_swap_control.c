
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXSWAPINTERVALEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXSwapIntervalEXT ;

__attribute__((used)) static int LoadExt_EXT_swap_control()
{
 int numFailed = 0;
 _funcptr_glXSwapIntervalEXT = (PFNGLXSWAPINTERVALEXTPROC)IntGetProcAddress("glXSwapIntervalEXT");
 if(!_funcptr_glXSwapIntervalEXT) ++numFailed;
 return numFailed;
}
