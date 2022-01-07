
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLVERTEXARRAYRANGENVPROC ;
typedef scalar_t__ PFNGLFLUSHVERTEXARRAYRANGENVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFlushVertexArrayRangeNV ;
 scalar_t__ _funcptr_glVertexArrayRangeNV ;

__attribute__((used)) static int LoadExt_NV_vertex_array_range()
{
 int numFailed = 0;
 _funcptr_glFlushVertexArrayRangeNV = (PFNGLFLUSHVERTEXARRAYRANGENVPROC)IntGetProcAddress("glFlushVertexArrayRangeNV");
 if(!_funcptr_glFlushVertexArrayRangeNV) ++numFailed;
 _funcptr_glVertexArrayRangeNV = (PFNGLVERTEXARRAYRANGENVPROC)IntGetProcAddress("glVertexArrayRangeNV");
 if(!_funcptr_glVertexArrayRangeNV) ++numFailed;
 return numFailed;
}
