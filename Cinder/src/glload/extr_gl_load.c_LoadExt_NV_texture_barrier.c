
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTUREBARRIERNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTextureBarrierNV ;

__attribute__((used)) static int LoadExt_NV_texture_barrier()
{
 int numFailed = 0;
 _funcptr_glTextureBarrierNV = (PFNGLTEXTUREBARRIERNVPROC)IntGetProcAddress("glTextureBarrierNV");
 if(!_funcptr_glTextureBarrierNV) ++numFailed;
 return numFailed;
}
