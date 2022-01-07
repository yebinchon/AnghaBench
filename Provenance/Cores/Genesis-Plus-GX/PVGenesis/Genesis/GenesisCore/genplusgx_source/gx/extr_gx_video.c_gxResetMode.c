
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef int f32 ;
struct TYPE_3__ {int efbHeight; int xfbHeight; int fbWidth; scalar_t__ xfbMode; int viHeight; int field_rendering; int vfilter; int sample_pattern; int aa; } ;
typedef int Mtx44 ;
typedef TYPE_1__ GXRModeObj ;
typedef int GXColor ;


 scalar_t__ BLACK ;
 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_GetYScaleFactor (int,int) ;
 int GX_LoadProjectionMtx (int ,int ) ;
 int GX_ORTHOGRAPHIC ;
 int GX_SetCopyClear (int ,int) ;
 int GX_SetCopyFilter (int ,int ,int,int ) ;
 int GX_SetDispCopyDst (int ,int ) ;
 int GX_SetDispCopySrc (int ,int ,int,int) ;
 int GX_SetDispCopyYScale (int ) ;
 int GX_SetFieldMode (int ,int ) ;
 int GX_SetScissor (int ,int ,int,int) ;
 int GX_SetViewport (float,float,int,int,float,float) ;
 int VIDEO_PadFramebufferWidth (int) ;
 scalar_t__ VI_XFBMODE_SF ;
 int guOrtho (int ,int,int,int,int,int,int) ;

__attribute__((used)) static void gxResetMode(GXRModeObj *tvmode, int vfilter_enabled)
{
  Mtx44 p;
  f32 yScale = GX_GetYScaleFactor(tvmode->efbHeight, tvmode->xfbHeight);
  u16 xfbHeight = GX_SetDispCopyYScale(yScale);
  u16 xfbWidth = VIDEO_PadFramebufferWidth(tvmode->fbWidth);

  GX_SetCopyClear((GXColor)BLACK,0x00ffffff);
  GX_SetViewport(0.0F, 0.0F, tvmode->fbWidth, tvmode->efbHeight, 0.0F, 1.0F);
  GX_SetScissor(0, 0, tvmode->fbWidth, tvmode->efbHeight);
  GX_SetDispCopySrc(0, 0, tvmode->fbWidth, tvmode->efbHeight);
  GX_SetDispCopyDst(xfbWidth, xfbHeight);
  GX_SetCopyFilter(tvmode->aa, tvmode->sample_pattern, (tvmode->xfbMode == VI_XFBMODE_SF) ? GX_FALSE : vfilter_enabled, tvmode->vfilter);
  GX_SetFieldMode(tvmode->field_rendering, ((tvmode->viHeight == 2 * tvmode->xfbHeight) ? GX_ENABLE : GX_DISABLE));
  guOrtho(p, tvmode->efbHeight/2, -(tvmode->efbHeight/2), -(tvmode->fbWidth/2), tvmode->fbWidth/2, 100, 1000);
  GX_LoadProjectionMtx(p, GX_ORTHOGRAPHIC);
  GX_Flush();
}
