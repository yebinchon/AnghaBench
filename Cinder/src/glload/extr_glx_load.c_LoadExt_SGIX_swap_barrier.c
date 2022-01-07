
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC ;
typedef scalar_t__ PFNGLXBINDSWAPBARRIERSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXBindSwapBarrierSGIX ;
 scalar_t__ _funcptr_glXQueryMaxSwapBarriersSGIX ;

__attribute__((used)) static int LoadExt_SGIX_swap_barrier()
{
 int numFailed = 0;
 _funcptr_glXBindSwapBarrierSGIX = (PFNGLXBINDSWAPBARRIERSGIXPROC)IntGetProcAddress("glXBindSwapBarrierSGIX");
 if(!_funcptr_glXBindSwapBarrierSGIX) ++numFailed;
 _funcptr_glXQueryMaxSwapBarriersSGIX = (PFNGLXQUERYMAXSWAPBARRIERSSGIXPROC)IntGetProcAddress("glXQueryMaxSwapBarriersSGIX");
 if(!_funcptr_glXQueryMaxSwapBarriersSGIX) ++numFailed;
 return numFailed;
}
