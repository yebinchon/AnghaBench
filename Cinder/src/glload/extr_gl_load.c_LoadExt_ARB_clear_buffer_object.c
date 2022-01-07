
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCLEARBUFFERSUBDATAPROC ;
typedef scalar_t__ PFNGLCLEARBUFFERDATAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glClearBufferData ;
 scalar_t__ _funcptr_glClearBufferSubData ;

__attribute__((used)) static int LoadExt_ARB_clear_buffer_object()
{
 int numFailed = 0;
 _funcptr_glClearBufferData = (PFNGLCLEARBUFFERDATAPROC)IntGetProcAddress("glClearBufferData");
 if(!_funcptr_glClearBufferData) ++numFailed;
 _funcptr_glClearBufferSubData = (PFNGLCLEARBUFFERSUBDATAPROC)IntGetProcAddress("glClearBufferSubData");
 if(!_funcptr_glClearBufferSubData) ++numFailed;
 return numFailed;
}
