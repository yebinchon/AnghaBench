
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNWGLQUERYFRAMETRACKINGI3DPROC ;
typedef scalar_t__ PFNWGLGETFRAMEUSAGEI3DPROC ;
typedef scalar_t__ PFNWGLENDFRAMETRACKINGI3DPROC ;
typedef scalar_t__ PFNWGLBEGINFRAMETRACKINGI3DPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_wglBeginFrameTrackingI3D ;
 scalar_t__ _funcptr_wglEndFrameTrackingI3D ;
 scalar_t__ _funcptr_wglGetFrameUsageI3D ;
 scalar_t__ _funcptr_wglQueryFrameTrackingI3D ;

__attribute__((used)) static int LoadExt_I3D_swap_frame_usage()
{
 int numFailed = 0;
 _funcptr_wglBeginFrameTrackingI3D = (PFNWGLBEGINFRAMETRACKINGI3DPROC)IntGetProcAddress("wglBeginFrameTrackingI3D");
 if(!_funcptr_wglBeginFrameTrackingI3D) ++numFailed;
 _funcptr_wglEndFrameTrackingI3D = (PFNWGLENDFRAMETRACKINGI3DPROC)IntGetProcAddress("wglEndFrameTrackingI3D");
 if(!_funcptr_wglEndFrameTrackingI3D) ++numFailed;
 _funcptr_wglGetFrameUsageI3D = (PFNWGLGETFRAMEUSAGEI3DPROC)IntGetProcAddress("wglGetFrameUsageI3D");
 if(!_funcptr_wglGetFrameUsageI3D) ++numFailed;
 _funcptr_wglQueryFrameTrackingI3D = (PFNWGLQUERYFRAMETRACKINGI3DPROC)IntGetProcAddress("wglQueryFrameTrackingI3D");
 if(!_funcptr_wglQueryFrameTrackingI3D) ++numFailed;
 return numFailed;
}
