
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLRELEASEIMAGEBUFFEREVENTSI3DPROC ;
typedef scalar_t__ PFNWGLDESTROYIMAGEBUFFERI3DPROC ;
typedef scalar_t__ PFNWGLCREATEIMAGEBUFFERI3DPROC ;
typedef scalar_t__ PFNWGLASSOCIATEIMAGEBUFFEREVENTSI3DPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglAssociateImageBufferEventsI3D ;
 scalar_t__ _funcptr_wglCreateImageBufferI3D ;
 scalar_t__ _funcptr_wglDestroyImageBufferI3D ;
 scalar_t__ _funcptr_wglReleaseImageBufferEventsI3D ;

__attribute__((used)) static int LoadExt_I3D_image_buffer()
{
 int numFailed = 0;
 _funcptr_wglAssociateImageBufferEventsI3D = (PFNWGLASSOCIATEIMAGEBUFFEREVENTSI3DPROC)IntGetProcAddress("wglAssociateImageBufferEventsI3D");
 if(!_funcptr_wglAssociateImageBufferEventsI3D) ++numFailed;
 _funcptr_wglCreateImageBufferI3D = (PFNWGLCREATEIMAGEBUFFERI3DPROC)IntGetProcAddress("wglCreateImageBufferI3D");
 if(!_funcptr_wglCreateImageBufferI3D) ++numFailed;
 _funcptr_wglDestroyImageBufferI3D = (PFNWGLDESTROYIMAGEBUFFERI3DPROC)IntGetProcAddress("wglDestroyImageBufferI3D");
 if(!_funcptr_wglDestroyImageBufferI3D) ++numFailed;
 _funcptr_wglReleaseImageBufferEventsI3D = (PFNWGLRELEASEIMAGEBUFFEREVENTSI3DPROC)IntGetProcAddress("wglReleaseImageBufferEventsI3D");
 if(!_funcptr_wglReleaseImageBufferEventsI3D) ++numFailed;
 return numFailed;
}
