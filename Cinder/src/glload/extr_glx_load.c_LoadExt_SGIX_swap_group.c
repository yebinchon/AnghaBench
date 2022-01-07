
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXJOINSWAPGROUPSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXJoinSwapGroupSGIX ;

__attribute__((used)) static int LoadExt_SGIX_swap_group()
{
 int numFailed = 0;
 _funcptr_glXJoinSwapGroupSGIX = (PFNGLXJOINSWAPGROUPSGIXPROC)IntGetProcAddress("glXJoinSwapGroupSGIX");
 if(!_funcptr_glXJoinSwapGroupSGIX) ++numFailed;
 return numFailed;
}
