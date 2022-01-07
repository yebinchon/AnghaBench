
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTUREMATERIALEXTPROC ;
typedef scalar_t__ PFNGLTEXTURELIGHTEXTPROC ;
typedef scalar_t__ PFNGLAPPLYTEXTUREEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glApplyTextureEXT ;
 scalar_t__ _funcptr_glTextureLightEXT ;
 scalar_t__ _funcptr_glTextureMaterialEXT ;

__attribute__((used)) static int LoadExt_EXT_light_texture()
{
 int numFailed = 0;
 _funcptr_glApplyTextureEXT = (PFNGLAPPLYTEXTUREEXTPROC)IntGetProcAddress("glApplyTextureEXT");
 if(!_funcptr_glApplyTextureEXT) ++numFailed;
 _funcptr_glTextureLightEXT = (PFNGLTEXTURELIGHTEXTPROC)IntGetProcAddress("glTextureLightEXT");
 if(!_funcptr_glTextureLightEXT) ++numFailed;
 _funcptr_glTextureMaterialEXT = (PFNGLTEXTUREMATERIALEXTPROC)IntGetProcAddress("glTextureMaterialEXT");
 if(!_funcptr_glTextureMaterialEXT) ++numFailed;
 return numFailed;
}
