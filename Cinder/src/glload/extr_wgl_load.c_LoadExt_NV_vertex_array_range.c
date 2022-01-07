
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLFREEMEMORYNVPROC ;
typedef scalar_t__ PFNWGLALLOCATEMEMORYNVPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglAllocateMemoryNV ;
 scalar_t__ _funcptr_wglFreeMemoryNV ;

__attribute__((used)) static int LoadExt_NV_vertex_array_range()
{
 int numFailed = 0;
 _funcptr_wglAllocateMemoryNV = (PFNWGLALLOCATEMEMORYNVPROC)IntGetProcAddress("wglAllocateMemoryNV");
 if(!_funcptr_wglAllocateMemoryNV) ++numFailed;
 _funcptr_wglFreeMemoryNV = (PFNWGLFREEMEMORYNVPROC)IntGetProcAddress("wglFreeMemoryNV");
 if(!_funcptr_wglFreeMemoryNV) ++numFailed;
 return numFailed;
}
