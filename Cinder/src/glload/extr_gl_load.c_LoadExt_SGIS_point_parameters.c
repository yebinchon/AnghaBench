
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVSGISPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFSGISPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPointParameterfSGIS ;
 scalar_t__ _funcptr_glPointParameterfvSGIS ;

__attribute__((used)) static int LoadExt_SGIS_point_parameters()
{
 int numFailed = 0;
 _funcptr_glPointParameterfSGIS = (PFNGLPOINTPARAMETERFSGISPROC)IntGetProcAddress("glPointParameterfSGIS");
 if(!_funcptr_glPointParameterfSGIS) ++numFailed;
 _funcptr_glPointParameterfvSGIS = (PFNGLPOINTPARAMETERFVSGISPROC)IntGetProcAddress("glPointParameterfvSGIS");
 if(!_funcptr_glPointParameterfvSGIS) ++numFailed;
 return numFailed;
}
