
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMEMORYBARRIERPROC ;
typedef scalar_t__ PFNGLBINDIMAGETEXTUREPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBindImageTexture ;
 scalar_t__ _funcptr_glMemoryBarrier ;

__attribute__((used)) static int LoadExt_ARB_shader_image_load_store()
{
 int numFailed = 0;
 _funcptr_glBindImageTexture = (PFNGLBINDIMAGETEXTUREPROC)IntGetProcAddress("glBindImageTexture");
 if(!_funcptr_glBindImageTexture) ++numFailed;
 _funcptr_glMemoryBarrier = (PFNGLMEMORYBARRIERPROC)IntGetProcAddress("glMemoryBarrier");
 if(!_funcptr_glMemoryBarrier) ++numFailed;
 return numFailed;
}
