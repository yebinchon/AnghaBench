
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETINTERNALFORMATIVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetInternalformativ ;

__attribute__((used)) static int LoadExt_ARB_internalformat_query()
{
 int numFailed = 0;
 _funcptr_glGetInternalformativ = (PFNGLGETINTERNALFORMATIVPROC)IntGetProcAddress("glGetInternalformativ");
 if(!_funcptr_glGetInternalformativ) ++numFailed;
 return numFailed;
}
