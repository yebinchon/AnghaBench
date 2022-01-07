
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int height; scalar_t__ userdata; } ;
typedef TYPE_3__ video_frame_info_t ;
struct gdi_texture {int width; int height; void* bmp_old; int data; void* bmp; } ;
struct TYPE_15__ {scalar_t__ x; scalar_t__ y; int width; int height; scalar_t__ texture; } ;
typedef TYPE_4__ menu_display_ctx_draw_t ;
struct TYPE_16__ {scalar_t__ texDC; void* bmp_old; scalar_t__ memDC; void* bmp; int winDC; } ;
typedef TYPE_5__ gdi_t ;
struct TYPE_13__ {int biBitCount; int biWidth; int biHeight; int biPlanes; int biSize; int biCompression; scalar_t__ biSizeImage; } ;
struct TYPE_12__ {int member_0; } ;
struct TYPE_18__ {TYPE_2__ bmiHeader; TYPE_1__ member_0; } ;
struct TYPE_17__ {int SourceConstantAlpha; int AlphaFormat; scalar_t__ BlendFlags; int BlendOp; int member_0; } ;
typedef void* HBITMAP ;
typedef TYPE_6__ BLENDFUNCTION ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_7__ BITMAPINFO ;


 int AC_SRC_ALPHA ;
 int AC_SRC_OVER ;
 int AlphaBlend (scalar_t__,scalar_t__,int,int,int,scalar_t__,int ,int ,int,int,TYPE_6__) ;
 int BI_RGB ;
 void* CreateCompatibleBitmap (int ,int,int) ;
 scalar_t__ CreateCompatibleDC (int ) ;
 int DIB_RGB_COLORS ;
 int SRCCOPY ;
 scalar_t__ SelectObject (scalar_t__,void*) ;
 int StretchBlt (scalar_t__,scalar_t__,int,int,int,scalar_t__,int ,int ,int,int,int ) ;
 int StretchDIBits (scalar_t__,int ,int ,int,int,int ,int ,int,int,int ,TYPE_7__*,int ,int ) ;

__attribute__((used)) static void menu_display_gdi_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   struct gdi_texture *texture = ((void*)0);
   gdi_t *gdi = (gdi_t*)video_info->userdata;
   BITMAPINFO info = {{0}};

   if (!gdi || !draw || draw->x < 0 || draw->y < 0 || draw->width <= 1 || draw->height <= 1)
      return;

   texture = (struct gdi_texture*)draw->texture;

   if (!texture || texture->width <= 1 || texture->height <= 1)
      return;

   info.bmiHeader.biBitCount = 32;
   info.bmiHeader.biWidth = texture->width;
   info.bmiHeader.biHeight = -texture->height;
   info.bmiHeader.biPlanes = 1;
   info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
   info.bmiHeader.biSizeImage = 0;
   info.bmiHeader.biCompression = BI_RGB;

   if (gdi->memDC)
   {




      if (!gdi->texDC)
         gdi->texDC = CreateCompatibleDC(gdi->winDC);

      if (texture->bmp)
         texture->bmp_old = (HBITMAP)SelectObject(gdi->texDC, texture->bmp);
      else
      {

         texture->bmp = CreateCompatibleBitmap(gdi->winDC, draw->width, draw->height);
         texture->bmp_old = (HBITMAP)SelectObject(gdi->texDC, texture->bmp);

         StretchDIBits(gdi->texDC, 0, 0, draw->width, draw->height, 0, 0, texture->width, texture->height, texture->data, &info, DIB_RGB_COLORS, SRCCOPY);
      }

      gdi->bmp_old = (HBITMAP)SelectObject(gdi->memDC, gdi->bmp);
      StretchBlt(gdi->memDC, draw->x, video_info->height - draw->height - draw->y, draw->width, draw->height, gdi->texDC, 0, 0, draw->width, draw->height, SRCCOPY);



      SelectObject(gdi->memDC, gdi->bmp_old);
      SelectObject(gdi->texDC, texture->bmp_old);
   }
}
