
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCULLPARAMETERFVEXTPROC ;
typedef scalar_t__ PFNGLCULLPARAMETERDVEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCullParameterdvEXT ;
 scalar_t__ _funcptr_glCullParameterfvEXT ;

__attribute__((used)) static int LoadExt_EXT_cull_vertex()
{
 int numFailed = 0;
 _funcptr_glCullParameterdvEXT = (PFNGLCULLPARAMETERDVEXTPROC)IntGetProcAddress("glCullParameterdvEXT");
 if(!_funcptr_glCullParameterdvEXT) ++numFailed;
 _funcptr_glCullParameterfvEXT = (PFNGLCULLPARAMETERFVEXTPROC)IntGetProcAddress("glCullParameterfvEXT");
 if(!_funcptr_glCullParameterfvEXT) ++numFailed;
 return numFailed;
}
