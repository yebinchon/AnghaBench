
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETFOGFUNCSGISPROC ;
typedef scalar_t__ PFNGLFOGFUNCSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFogFuncSGIS ;
 scalar_t__ _funcptr_glGetFogFuncSGIS ;

__attribute__((used)) static int LoadExt_SGIS_fog_function()
{
 int numFailed = 0;
 _funcptr_glFogFuncSGIS = (PFNGLFOGFUNCSGISPROC)IntGetProcAddress("glFogFuncSGIS");
 if(!_funcptr_glFogFuncSGIS) ++numFailed;
 _funcptr_glGetFogFuncSGIS = (PFNGLGETFOGFUNCSGISPROC)IntGetProcAddress("glGetFogFuncSGIS");
 if(!_funcptr_glGetFogFuncSGIS) ++numFailed;
 return numFailed;
}
