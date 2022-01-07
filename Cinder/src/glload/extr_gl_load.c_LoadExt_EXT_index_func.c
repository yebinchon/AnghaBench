
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLINDEXFUNCEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glIndexFuncEXT ;

__attribute__((used)) static int LoadExt_EXT_index_func()
{
 int numFailed = 0;
 _funcptr_glIndexFuncEXT = (PFNGLINDEXFUNCEXTPROC)IntGetProcAddress("glIndexFuncEXT");
 if(!_funcptr_glIndexFuncEXT) ++numFailed;
 return numFailed;
}
