
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETFRAGDATAINDEXPROC ;
typedef scalar_t__ PFNGLBINDFRAGDATALOCATIONINDEXEDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBindFragDataLocationIndexed ;
 scalar_t__ _funcptr_glGetFragDataIndex ;

__attribute__((used)) static int LoadExt_ARB_blend_func_extended()
{
 int numFailed = 0;
 _funcptr_glBindFragDataLocationIndexed = (PFNGLBINDFRAGDATALOCATIONINDEXEDPROC)IntGetProcAddress("glBindFragDataLocationIndexed");
 if(!_funcptr_glBindFragDataLocationIndexed) ++numFailed;
 _funcptr_glGetFragDataIndex = (PFNGLGETFRAGDATAINDEXPROC)IntGetProcAddress("glGetFragDataIndex");
 if(!_funcptr_glGetFragDataIndex) ++numFailed;
 return numFailed;
}
