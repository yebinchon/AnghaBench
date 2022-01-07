
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXCOPYSUBBUFFERMESAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXCopySubBufferMESA ;

__attribute__((used)) static int LoadExt_MESA_copy_sub_buffer()
{
 int numFailed = 0;
 _funcptr_glXCopySubBufferMESA = (PFNGLXCOPYSUBBUFFERMESAPROC)IntGetProcAddress("glXCopySubBufferMESA");
 if(!_funcptr_glXCopySubBufferMESA) ++numFailed;
 return numFailed;
}
