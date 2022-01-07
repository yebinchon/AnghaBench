
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLCOPYBUFFERSUBDATAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glCopyBufferSubData ;

__attribute__((used)) static int LoadExt_ARB_copy_buffer()
{
 int numFailed = 0;
 _funcptr_glCopyBufferSubData = (PFNGLCOPYBUFFERSUBDATAPROC)IntGetProcAddress("glCopyBufferSubData");
 if(!_funcptr_glCopyBufferSubData) ++numFailed;
 return numFailed;
}
