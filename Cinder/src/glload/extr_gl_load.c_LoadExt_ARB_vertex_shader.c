
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETATTRIBLOCATIONARBPROC ;
typedef scalar_t__ PFNGLGETACTIVEATTRIBARBPROC ;
typedef scalar_t__ PFNGLBINDATTRIBLOCATIONARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBindAttribLocationARB ;
 scalar_t__ _funcptr_glGetActiveAttribARB ;
 scalar_t__ _funcptr_glGetAttribLocationARB ;

__attribute__((used)) static int LoadExt_ARB_vertex_shader()
{
 int numFailed = 0;
 _funcptr_glBindAttribLocationARB = (PFNGLBINDATTRIBLOCATIONARBPROC)IntGetProcAddress("glBindAttribLocationARB");
 if(!_funcptr_glBindAttribLocationARB) ++numFailed;
 _funcptr_glGetActiveAttribARB = (PFNGLGETACTIVEATTRIBARBPROC)IntGetProcAddress("glGetActiveAttribARB");
 if(!_funcptr_glGetActiveAttribARB) ++numFailed;
 _funcptr_glGetAttribLocationARB = (PFNGLGETATTRIBLOCATIONARBPROC)IntGetProcAddress("glGetAttribLocationARB");
 if(!_funcptr_glGetAttribLocationARB) ++numFailed;
 return numFailed;
}
