
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLQUERYMATRIXXOESPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glQueryMatrixxOES ;

__attribute__((used)) static int LoadExt_OES_query_matrix()
{
 int numFailed = 0;
 _funcptr_glQueryMatrixxOES = (PFNGLQUERYMATRIXXOESPROC)IntGetProcAddress("glQueryMatrixxOES");
 if(!_funcptr_glQueryMatrixxOES) ++numFailed;
 return numFailed;
}
