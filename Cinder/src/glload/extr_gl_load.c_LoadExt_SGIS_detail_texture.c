
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETDETAILTEXFUNCSGISPROC ;
typedef scalar_t__ PFNGLDETAILTEXFUNCSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDetailTexFuncSGIS ;
 scalar_t__ _funcptr_glGetDetailTexFuncSGIS ;

__attribute__((used)) static int LoadExt_SGIS_detail_texture()
{
 int numFailed = 0;
 _funcptr_glDetailTexFuncSGIS = (PFNGLDETAILTEXFUNCSGISPROC)IntGetProcAddress("glDetailTexFuncSGIS");
 if(!_funcptr_glDetailTexFuncSGIS) ++numFailed;
 _funcptr_glGetDetailTexFuncSGIS = (PFNGLGETDETAILTEXFUNCSGISPROC)IntGetProcAddress("glGetDetailTexFuncSGIS");
 if(!_funcptr_glGetDetailTexFuncSGIS) ++numFailed;
 return numFailed;
}
