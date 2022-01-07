
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXSWAPINTERVALSGIPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXSwapIntervalSGI ;

__attribute__((used)) static int LoadExt_SGI_swap_control()
{
 int numFailed = 0;
 _funcptr_glXSwapIntervalSGI = (PFNGLXSWAPINTERVALSGIPROC)IntGetProcAddress("glXSwapIntervalSGI");
 if(!_funcptr_glXSwapIntervalSGI) ++numFailed;
 return numFailed;
}
