
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int xfbHeight; scalar_t__ aa; int fbWidth; } ;
typedef TYPE_1__ GXRModeObj ;


 int VIDEO_PadFramebufferWidth (int ) ;
 int VI_DISPLAY_PIX_SZ ;

u32 VIDEO_GetFrameBufferSize(GXRModeObj *rmode) {
 u16 w, h;

 w = VIDEO_PadFramebufferWidth(rmode->fbWidth);
 h = rmode->xfbHeight;

 if (rmode->aa)
  h += 4;

 return w * h * VI_DISPLAY_PIX_SZ;
}
