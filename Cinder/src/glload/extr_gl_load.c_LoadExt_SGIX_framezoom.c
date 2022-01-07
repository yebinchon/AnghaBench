
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PFNGLFRAMEZOOMSGIXPROC ;


 scalar_t__ IntGetProcAddress (char*) ;
 scalar_t__ _funcptr_glFrameZoomSGIX ;

__attribute__((used)) static int LoadExt_SGIX_framezoom()
{
 int numFailed = 0;
 _funcptr_glFrameZoomSGIX = (PFNGLFRAMEZOOMSGIXPROC)IntGetProcAddress("glFrameZoomSGIX");
 if(!_funcptr_glFrameZoomSGIX) ++numFailed;
 return numFailed;
}
