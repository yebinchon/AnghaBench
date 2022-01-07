
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPOINTPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLPOINTPARAMETERFEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glPointParameterfEXT ;
 scalar_t__ _funcptr_glPointParameterfvEXT ;

__attribute__((used)) static int LoadExt_EXT_point_parameters()
{
 int numFailed = 0;
 _funcptr_glPointParameterfEXT = (PFNGLPOINTPARAMETERFEXTPROC)IntGetProcAddress("glPointParameterfEXT");
 if(!_funcptr_glPointParameterfEXT) ++numFailed;
 _funcptr_glPointParameterfvEXT = (PFNGLPOINTPARAMETERFVEXTPROC)IntGetProcAddress("glPointParameterfvEXT");
 if(!_funcptr_glPointParameterfvEXT) ++numFailed;
 return numFailed;
}
