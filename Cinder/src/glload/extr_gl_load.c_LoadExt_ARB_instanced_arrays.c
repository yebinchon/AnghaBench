
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXATTRIBDIVISORARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glVertexAttribDivisorARB ;

__attribute__((used)) static int LoadExt_ARB_instanced_arrays()
{
 int numFailed = 0;
 _funcptr_glVertexAttribDivisorARB = (PFNGLVERTEXATTRIBDIVISORARBPROC)IntGetProcAddress("glVertexAttribDivisorARB");
 if(!_funcptr_glVertexAttribDivisorARB) ++numFailed;
 return numFailed;
}
