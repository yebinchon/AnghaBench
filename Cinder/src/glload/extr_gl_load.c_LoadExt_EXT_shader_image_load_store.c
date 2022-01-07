
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMEMORYBARRIEREXTPROC ;
typedef scalar_t__ PFNGLBINDIMAGETEXTUREEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBindImageTextureEXT ;
 scalar_t__ _funcptr_glMemoryBarrierEXT ;

__attribute__((used)) static int LoadExt_EXT_shader_image_load_store()
{
 int numFailed = 0;
 _funcptr_glBindImageTextureEXT = (PFNGLBINDIMAGETEXTUREEXTPROC)IntGetProcAddress("glBindImageTextureEXT");
 if(!_funcptr_glBindImageTextureEXT) ++numFailed;
 _funcptr_glMemoryBarrierEXT = (PFNGLMEMORYBARRIEREXTPROC)IntGetProcAddress("glMemoryBarrierEXT");
 if(!_funcptr_glMemoryBarrierEXT) ++numFailed;
 return numFailed;
}
