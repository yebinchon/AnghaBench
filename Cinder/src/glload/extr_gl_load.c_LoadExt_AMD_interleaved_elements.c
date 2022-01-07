
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXATTRIBPARAMETERIAMDPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glVertexAttribParameteriAMD ;

__attribute__((used)) static int LoadExt_AMD_interleaved_elements()
{
 int numFailed = 0;
 _funcptr_glVertexAttribParameteriAMD = (PFNGLVERTEXATTRIBPARAMETERIAMDPROC)IntGetProcAddress("glVertexAttribParameteriAMD");
 if(!_funcptr_glVertexAttribParameteriAMD) ++numFailed;
 return numFailed;
}
