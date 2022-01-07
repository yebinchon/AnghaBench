
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLPROVOKINGVERTEXEXTPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glProvokingVertexEXT ;

__attribute__((used)) static int LoadExt_EXT_provoking_vertex()
{
 int numFailed = 0;
 _funcptr_glProvokingVertexEXT = (PFNGLPROVOKINGVERTEXEXTPROC)IntGetProcAddress("glProvokingVertexEXT");
 if(!_funcptr_glProvokingVertexEXT) ++numFailed;
 return numFailed;
}
