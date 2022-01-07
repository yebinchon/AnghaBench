
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLSHADERSTORAGEBLOCKBINDINGPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glShaderStorageBlockBinding ;

__attribute__((used)) static int LoadExt_ARB_shader_storage_buffer_object()
{
 int numFailed = 0;
 _funcptr_glShaderStorageBlockBinding = (PFNGLSHADERSTORAGEBLOCKBINDINGPROC)IntGetProcAddress("glShaderStorageBlockBinding");
 if(!_funcptr_glShaderStorageBlockBinding) ++numFailed;
 return numFailed;
}
