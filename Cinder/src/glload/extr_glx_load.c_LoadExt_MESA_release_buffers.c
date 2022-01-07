
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLXRELEASEBUFFERSMESAPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glXReleaseBuffersMESA ;

__attribute__((used)) static int LoadExt_MESA_release_buffers()
{
 int numFailed = 0;
 _funcptr_glXReleaseBuffersMESA = (PFNGLXRELEASEBUFFERSMESAPROC)IntGetProcAddress("glXReleaseBuffersMESA");
 if(!_funcptr_glXReleaseBuffersMESA) ++numFailed;
 return numFailed;
}
