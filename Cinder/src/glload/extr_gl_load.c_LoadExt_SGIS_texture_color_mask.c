
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXTURECOLORMASKSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glTextureColorMaskSGIS ;

__attribute__((used)) static int LoadExt_SGIS_texture_color_mask()
{
 int numFailed = 0;
 _funcptr_glTextureColorMaskSGIS = (PFNGLTEXTURECOLORMASKSGISPROC)IntGetProcAddress("glTextureColorMaskSGIS");
 if(!_funcptr_glTextureColorMaskSGIS) ++numFailed;
 return numFailed;
}
