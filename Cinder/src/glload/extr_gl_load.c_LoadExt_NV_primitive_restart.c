
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPRIMITIVERESTARTNVPROC ;
typedef scalar_t__ PFNGLPRIMITIVERESTARTINDEXNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPrimitiveRestartIndexNV ;
 scalar_t__ _funcptr_glPrimitiveRestartNV ;

__attribute__((used)) static int LoadExt_NV_primitive_restart()
{
 int numFailed = 0;
 _funcptr_glPrimitiveRestartIndexNV = (PFNGLPRIMITIVERESTARTINDEXNVPROC)IntGetProcAddress("glPrimitiveRestartIndexNV");
 if(!_funcptr_glPrimitiveRestartIndexNV) ++numFailed;
 _funcptr_glPrimitiveRestartNV = (PFNGLPRIMITIVERESTARTNVPROC)IntGetProcAddress("glPrimitiveRestartNV");
 if(!_funcptr_glPrimitiveRestartNV) ++numFailed;
 return numFailed;
}
