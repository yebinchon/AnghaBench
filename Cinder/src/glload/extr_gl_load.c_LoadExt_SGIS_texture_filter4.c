
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLTEXFILTERFUNCSGISPROC ;
typedef scalar_t__ PFNGLGETTEXFILTERFUNCSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetTexFilterFuncSGIS ;
 scalar_t__ _funcptr_glTexFilterFuncSGIS ;

__attribute__((used)) static int LoadExt_SGIS_texture_filter4()
{
 int numFailed = 0;
 _funcptr_glGetTexFilterFuncSGIS = (PFNGLGETTEXFILTERFUNCSGISPROC)IntGetProcAddress("glGetTexFilterFuncSGIS");
 if(!_funcptr_glGetTexFilterFuncSGIS) ++numFailed;
 _funcptr_glTexFilterFuncSGIS = (PFNGLTEXFILTERFUNCSGISPROC)IntGetProcAddress("glTexFilterFuncSGIS");
 if(!_funcptr_glTexFilterFuncSGIS) ++numFailed;
 return numFailed;
}
