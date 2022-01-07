
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSHARPENTEXFUNCSGISPROC ;
typedef scalar_t__ PFNGLGETSHARPENTEXFUNCSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetSharpenTexFuncSGIS ;
 scalar_t__ _funcptr_glSharpenTexFuncSGIS ;

__attribute__((used)) static int LoadExt_SGIS_sharpen_texture()
{
 int numFailed = 0;
 _funcptr_glGetSharpenTexFuncSGIS = (PFNGLGETSHARPENTEXFUNCSGISPROC)IntGetProcAddress("glGetSharpenTexFuncSGIS");
 if(!_funcptr_glGetSharpenTexFuncSGIS) ++numFailed;
 _funcptr_glSharpenTexFuncSGIS = (PFNGLSHARPENTEXFUNCSGISPROC)IntGetProcAddress("glSharpenTexFuncSGIS");
 if(!_funcptr_glSharpenTexFuncSGIS) ++numFailed;
 return numFailed;
}
