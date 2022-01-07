
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXGETTRANSPARENTINDEXSUNPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXGetTransparentIndexSUN ;

__attribute__((used)) static int LoadExt_SUN_get_transparent_index()
{
 int numFailed = 0;
 _funcptr_glXGetTransparentIndexSUN = (PFNGLXGETTRANSPARENTINDEXSUNPROC)IntGetProcAddress("glXGetTransparentIndexSUN");
 if(!_funcptr_glXGetTransparentIndexSUN) ++numFailed;
 return numFailed;
}
