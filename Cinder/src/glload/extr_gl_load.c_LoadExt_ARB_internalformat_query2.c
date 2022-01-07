
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLGETINTERNALFORMATI64VPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glGetInternalformati64v ;

__attribute__((used)) static int LoadExt_ARB_internalformat_query2()
{
 int numFailed = 0;
 _funcptr_glGetInternalformati64v = (PFNGLGETINTERNALFORMATI64VPROC)IntGetProcAddress("glGetInternalformati64v");
 if(!_funcptr_glGetInternalformati64v) ++numFailed;
 return numFailed;
}
