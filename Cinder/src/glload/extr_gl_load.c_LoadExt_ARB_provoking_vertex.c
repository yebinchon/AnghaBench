
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROVOKINGVERTEXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glProvokingVertex ;

__attribute__((used)) static int LoadExt_ARB_provoking_vertex()
{
 int numFailed = 0;
 _funcptr_glProvokingVertex = (PFNGLPROVOKINGVERTEXPROC)IntGetProcAddress("glProvokingVertex");
 if(!_funcptr_glProvokingVertex) ++numFailed;
 return numFailed;
}
