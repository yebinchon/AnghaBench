
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROGRAMVERTEXLIMITNVPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC ;
typedef scalar_t__ PFNGLFRAMEBUFFERTEXTUREEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFramebufferTextureEXT ;
 scalar_t__ _funcptr_glFramebufferTextureFaceEXT ;
 scalar_t__ _funcptr_glFramebufferTextureLayerEXT ;
 scalar_t__ _funcptr_glProgramVertexLimitNV ;

__attribute__((used)) static int LoadExt_NV_geometry_program4()
{
 int numFailed = 0;
 _funcptr_glFramebufferTextureEXT = (PFNGLFRAMEBUFFERTEXTUREEXTPROC)IntGetProcAddress("glFramebufferTextureEXT");
 if(!_funcptr_glFramebufferTextureEXT) ++numFailed;
 _funcptr_glFramebufferTextureFaceEXT = (PFNGLFRAMEBUFFERTEXTUREFACEEXTPROC)IntGetProcAddress("glFramebufferTextureFaceEXT");
 if(!_funcptr_glFramebufferTextureFaceEXT) ++numFailed;
 _funcptr_glFramebufferTextureLayerEXT = (PFNGLFRAMEBUFFERTEXTURELAYEREXTPROC)IntGetProcAddress("glFramebufferTextureLayerEXT");
 if(!_funcptr_glFramebufferTextureLayerEXT) ++numFailed;
 _funcptr_glProgramVertexLimitNV = (PFNGLPROGRAMVERTEXLIMITNVPROC)IntGetProcAddress("glProgramVertexLimitNV");
 if(!_funcptr_glProgramVertexLimitNV) ++numFailed;
 return numFailed;
}
