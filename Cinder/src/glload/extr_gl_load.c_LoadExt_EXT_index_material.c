
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLINDEXMATERIALEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glIndexMaterialEXT ;

__attribute__((used)) static int LoadExt_EXT_index_material()
{
 int numFailed = 0;
 _funcptr_glIndexMaterialEXT = (PFNGLINDEXMATERIALEXTPROC)IntGetProcAddress("glIndexMaterialEXT");
 if(!_funcptr_glIndexMaterialEXT) ++numFailed;
 return numFailed;
}
