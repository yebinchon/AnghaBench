
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC ;
typedef scalar_t__ PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC ;
typedef scalar_t__ PFNGLDRAWELEMENTSBASEVERTEXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glDrawElementsBaseVertex ;
 scalar_t__ _funcptr_glDrawElementsInstancedBaseVertex ;
 scalar_t__ _funcptr_glDrawRangeElementsBaseVertex ;
 scalar_t__ _funcptr_glMultiDrawElementsBaseVertex ;

__attribute__((used)) static int LoadExt_ARB_draw_elements_base_vertex()
{
 int numFailed = 0;
 _funcptr_glDrawElementsBaseVertex = (PFNGLDRAWELEMENTSBASEVERTEXPROC)IntGetProcAddress("glDrawElementsBaseVertex");
 if(!_funcptr_glDrawElementsBaseVertex) ++numFailed;
 _funcptr_glDrawElementsInstancedBaseVertex = (PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC)IntGetProcAddress("glDrawElementsInstancedBaseVertex");
 if(!_funcptr_glDrawElementsInstancedBaseVertex) ++numFailed;
 _funcptr_glDrawRangeElementsBaseVertex = (PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC)IntGetProcAddress("glDrawRangeElementsBaseVertex");
 if(!_funcptr_glDrawRangeElementsBaseVertex) ++numFailed;
 _funcptr_glMultiDrawElementsBaseVertex = (PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC)IntGetProcAddress("glMultiDrawElementsBaseVertex");
 if(!_funcptr_glMultiDrawElementsBaseVertex) ++numFailed;
 return numFailed;
}
