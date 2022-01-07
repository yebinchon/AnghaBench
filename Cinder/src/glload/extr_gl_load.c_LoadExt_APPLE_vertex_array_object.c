
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLISVERTEXARRAYAPPLEPROC ;
typedef scalar_t__ PFNGLGENVERTEXARRAYSAPPLEPROC ;
typedef scalar_t__ PFNGLDELETEVERTEXARRAYSAPPLEPROC ;
typedef scalar_t__ PFNGLBINDVERTEXARRAYAPPLEPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glBindVertexArrayAPPLE ;
 scalar_t__ _funcptr_glDeleteVertexArraysAPPLE ;
 scalar_t__ _funcptr_glGenVertexArraysAPPLE ;
 scalar_t__ _funcptr_glIsVertexArrayAPPLE ;

__attribute__((used)) static int LoadExt_APPLE_vertex_array_object()
{
 int numFailed = 0;
 _funcptr_glBindVertexArrayAPPLE = (PFNGLBINDVERTEXARRAYAPPLEPROC)IntGetProcAddress("glBindVertexArrayAPPLE");
 if(!_funcptr_glBindVertexArrayAPPLE) ++numFailed;
 _funcptr_glDeleteVertexArraysAPPLE = (PFNGLDELETEVERTEXARRAYSAPPLEPROC)IntGetProcAddress("glDeleteVertexArraysAPPLE");
 if(!_funcptr_glDeleteVertexArraysAPPLE) ++numFailed;
 _funcptr_glGenVertexArraysAPPLE = (PFNGLGENVERTEXARRAYSAPPLEPROC)IntGetProcAddress("glGenVertexArraysAPPLE");
 if(!_funcptr_glGenVertexArraysAPPLE) ++numFailed;
 _funcptr_glIsVertexArrayAPPLE = (PFNGLISVERTEXARRAYAPPLEPROC)IntGetProcAddress("glIsVertexArrayAPPLE");
 if(!_funcptr_glIsVertexArrayAPPLE) ++numFailed;
 return numFailed;
}
