
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSWAPINTERVALEXTPROC ;
typedef scalar_t__ PFNWGLGETSWAPINTERVALEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglGetSwapIntervalEXT ;
 scalar_t__ _funcptr_wglSwapIntervalEXT ;

__attribute__((used)) static int LoadExt_EXT_swap_control()
{
 int numFailed = 0;
 _funcptr_wglGetSwapIntervalEXT = (PFNWGLGETSWAPINTERVALEXTPROC)IntGetProcAddress("wglGetSwapIntervalEXT");
 if(!_funcptr_wglGetSwapIntervalEXT) ++numFailed;
 _funcptr_wglSwapIntervalEXT = (PFNWGLSWAPINTERVALEXTPROC)IntGetProcAddress("wglSwapIntervalEXT");
 if(!_funcptr_wglSwapIntervalEXT) ++numFailed;
 return numFailed;
}
