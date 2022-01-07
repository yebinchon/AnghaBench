
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETAGPOFFSETMESAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXGetAGPOffsetMESA ;

__attribute__((used)) static int LoadExt_MESA_agp_offset()
{
 int numFailed = 0;
 _funcptr_glXGetAGPOffsetMESA = (PFNGLXGETAGPOFFSETMESAPROC)IntGetProcAddress("glXGetAGPOffsetMESA");
 if(!_funcptr_glXGetAGPOffsetMESA) ++numFailed;
 return numFailed;
}
