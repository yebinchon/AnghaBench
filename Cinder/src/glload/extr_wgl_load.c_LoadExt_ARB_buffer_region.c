
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLSAVEBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLRESTOREBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLDELETEBUFFERREGIONARBPROC ;
typedef scalar_t__ PFNWGLCREATEBUFFERREGIONARBPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglCreateBufferRegionARB ;
 scalar_t__ _funcptr_wglDeleteBufferRegionARB ;
 scalar_t__ _funcptr_wglRestoreBufferRegionARB ;
 scalar_t__ _funcptr_wglSaveBufferRegionARB ;

__attribute__((used)) static int LoadExt_ARB_buffer_region()
{
 int numFailed = 0;
 _funcptr_wglCreateBufferRegionARB = (PFNWGLCREATEBUFFERREGIONARBPROC)IntGetProcAddress("wglCreateBufferRegionARB");
 if(!_funcptr_wglCreateBufferRegionARB) ++numFailed;
 _funcptr_wglDeleteBufferRegionARB = (PFNWGLDELETEBUFFERREGIONARBPROC)IntGetProcAddress("wglDeleteBufferRegionARB");
 if(!_funcptr_wglDeleteBufferRegionARB) ++numFailed;
 _funcptr_wglRestoreBufferRegionARB = (PFNWGLRESTOREBUFFERREGIONARBPROC)IntGetProcAddress("wglRestoreBufferRegionARB");
 if(!_funcptr_wglRestoreBufferRegionARB) ++numFailed;
 _funcptr_wglSaveBufferRegionARB = (PFNWGLSAVEBUFFERREGIONARBPROC)IntGetProcAddress("wglSaveBufferRegionARB");
 if(!_funcptr_wglSaveBufferRegionARB) ++numFailed;
 return numFailed;
}
