
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ VGint ;
typedef scalar_t__ VGfloat ;
typedef int VGPaint ;
typedef int VGFT_FONT_T ;
typedef int VCOS_STATUS_T ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;
typedef int GX_DISPLAY_T ;
typedef int GX_CLIENT_STATE_T ;
typedef TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;


 scalar_t__ GRAPHICS_RESOURCE_HEIGHT ;
 scalar_t__ GRAPHICS_RESOURCE_WIDTH ;
 scalar_t__ GRAPHICS_TRANSPARENT_COLOUR ;
 int GX_LOG (char*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int VCOS_ENOMEM ;
 int VCOS_SUCCESS ;
 int VG_CLEAR_COLOR ;
 int VG_FALSE ;
 int VG_FILL_PATH ;
 int VG_PAINT_COLOR ;
 int VG_PAINT_TYPE ;
 int VG_PAINT_TYPE_COLOR ;
 int VG_SCISSORING ;
 int VG_SCISSOR_RECTS ;
 int VG_TRUE ;
 int * find_font (char const*,scalar_t__) ;
 int gx_priv_colour_to_paint (scalar_t__,scalar_t__*) ;
 int gx_priv_restore (int *) ;
 int gx_priv_save (int *,TYPE_1__*) ;
 int inited ;
 int vcos_assert (int) ;
 int vcos_demand (int ) ;
 int vgClear (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vgCreatePaint () ;
 int vgDestroyPaint (int ) ;
 int vgGetError () ;
 int vgSetPaint (int ,int ) ;
 int vgSetParameterfv (int ,int ,int,scalar_t__*) ;
 int vgSetParameteri (int ,int ,int ) ;
 int vgSetfv (int ,int,scalar_t__*) ;
 int vgSeti (int ,int ) ;
 int vgSetiv (int ,int,scalar_t__*) ;
 scalar_t__ vgft_first_line_y_offset (int *) ;
 int vgft_font_draw (int *,scalar_t__,scalar_t__,char const*,scalar_t__,int ) ;
 int vgft_get_text_extents (int *,char const*,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;

VCOS_STATUS_T gx_priv_render_text( GX_DISPLAY_T *disp,
                                   GRAPHICS_RESOURCE_HANDLE res,
                                   int32_t x,
                                   int32_t y,
                                   uint32_t width,
                                   uint32_t height,
                                   uint32_t fg_colour,
                                   uint32_t bg_colour,
                                   const char *text,
                                   uint32_t text_length,
                                   uint32_t text_size )
{
   VGfloat vg_colour[4];
   VGFT_FONT_T *font;
   VGPaint fg;
   GX_CLIENT_STATE_T save;
   VCOS_STATUS_T status = VCOS_SUCCESS;
   int clip = 1;

   vcos_demand(inited);

   gx_priv_save(&save, res);

   if (width == GRAPHICS_RESOURCE_WIDTH &&
       height == GRAPHICS_RESOURCE_HEIGHT)
   {
      clip = 0;
   }

   width = (width == GRAPHICS_RESOURCE_WIDTH) ? res->width : width;
   height = (height == GRAPHICS_RESOURCE_HEIGHT) ? res->height : height;
   font = find_font(text, text_size);
   if (!font)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }


   if (clip)
   {
      VGint coords[] = {x,y,width,height};
      vgSeti(VG_SCISSORING, VG_TRUE);
      vgSetiv(VG_SCISSOR_RECTS, 4, coords);
   }


   if (bg_colour != GRAPHICS_TRANSPARENT_COLOUR)
   {
      int err;
      VGfloat rendered_w, rendered_h;
      VGfloat vg_bg_colour[4];


      gx_priv_colour_to_paint(bg_colour, vg_bg_colour);
      vgSetfv(VG_CLEAR_COLOR, 4, vg_bg_colour);


      vgft_get_text_extents(font, text, text_length, (VGfloat)x, (VGfloat)y, &rendered_w, &rendered_h);

      if ( ( 0 < (VGint)rendered_w ) && ( 0 < (VGint)rendered_h ) )
      {

         VGfloat offset = vgft_first_line_y_offset(font);
         int32_t bottom = y + offset - rendered_h;

         vgClear(x, bottom, (VGint)rendered_w, (VGint)rendered_h);
         err = vgGetError();
         if (err)
         {
            GX_LOG("Error %d clearing bg text %d %d %g %g",
                   err, x, y, rendered_w, rendered_h);
            vcos_assert(0);
         }
      }
   }

   fg = vgCreatePaint();
   if (!fg)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }


   vgSetParameteri(fg, VG_PAINT_TYPE, VG_PAINT_TYPE_COLOR);
   gx_priv_colour_to_paint(fg_colour, vg_colour);
   vgSetParameterfv(fg, VG_PAINT_COLOR, 4, vg_colour);
   vgSetPaint(fg, VG_FILL_PATH);

   vgft_font_draw(font, (VGfloat)x, (VGfloat)y, text, text_length, VG_FILL_PATH);

   vgDestroyPaint(fg);

   vcos_assert(vgGetError() == 0);
   vgSeti(VG_SCISSORING, VG_FALSE);

finish:
   gx_priv_restore(&save);

   return status;
}
