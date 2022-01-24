#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_9__ ;
typedef  struct TYPE_36__   TYPE_8__ ;
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
struct TYPE_37__ {int n_points; TYPE_6__* points; } ;
struct TYPE_36__ {int /*<<< orphan*/  flags; TYPE_9__* source; TYPE_11__* target; } ;
struct TYPE_32__ {int /*<<< orphan*/  memory; } ;
struct TYPE_35__ {scalar_t__ glyph_format; int /*<<< orphan*/  raster; scalar_t__ (* raster_render ) (int /*<<< orphan*/ ,TYPE_8__*) ;TYPE_4__ root; } ;
struct TYPE_34__ {int x; int y; } ;
struct TYPE_33__ {int flags; } ;
struct TYPE_31__ {int /*<<< orphan*/  (* lcd_filter_func ) (TYPE_11__*,scalar_t__,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * lcd_weights; } ;
struct TYPE_30__ {TYPE_1__* internal; } ;
struct TYPE_29__ {int /*<<< orphan*/  (* lcd_filter_func ) (TYPE_11__*,scalar_t__,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * lcd_weights; } ;
struct TYPE_28__ {unsigned int rows; int pitch; scalar_t__ pixel_mode; unsigned int width; int /*<<< orphan*/ * buffer; } ;
struct TYPE_27__ {scalar_t__ format; int bitmap_left; int bitmap_top; TYPE_5__* internal; TYPE_3__* library; TYPE_2__* face; TYPE_11__ bitmap; TYPE_9__ outline; } ;
typedef  TYPE_6__ FT_Vector ;
typedef  unsigned int FT_ULong ;
typedef  unsigned int FT_UInt ;
typedef  TYPE_7__* FT_Renderer ;
typedef  scalar_t__ FT_Render_Mode ;
typedef  TYPE_8__ FT_Raster_Params ;
typedef  int FT_Pos ;
typedef  TYPE_9__ FT_Outline ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int FT_Int ;
typedef  TYPE_10__* FT_GlyphSlot ;
typedef  scalar_t__ FT_Error ;
typedef  int /*<<< orphan*/  FT_Byte ;
typedef  int /*<<< orphan*/  (* FT_Bitmap_LcdFilterFunc ) (TYPE_11__*,scalar_t__,int /*<<< orphan*/ *) ;
typedef  TYPE_11__ FT_Bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  Cannot_Render_Glyph ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int,int) ; 
 scalar_t__ FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FT_GLYPH_FORMAT_BITMAP ; 
 int FT_GLYPH_OWN_BITMAP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int,int) ; 
 scalar_t__ FT_PIXEL_MODE_LCD_V ; 
 int /*<<< orphan*/  FT_RASTER_FLAG_AA ; 
 scalar_t__ FT_RENDER_MODE_LCD ; 
 scalar_t__ FT_RENDER_MODE_LCD_V ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,scalar_t__,TYPE_6__ const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_8__*) ; 

__attribute__((used)) static FT_Error
  FUNC15( FT_Renderer       render,
                            FT_GlyphSlot      slot,
                            FT_Render_Mode    mode,
                            const FT_Vector*  origin,
                            FT_Render_Mode    required_mode )
  {
    FT_Error     error   = FT_Err_Ok;
    FT_Outline*  outline = &slot->outline;
    FT_Bitmap*   bitmap  = &slot->bitmap;
    FT_Memory    memory  = render->root.memory;
    FT_Pos       x_shift = 0;
    FT_Pos       y_shift = 0;
    FT_Int       hmul    = ( mode == FT_RENDER_MODE_LCD );
    FT_Int       vmul    = ( mode == FT_RENDER_MODE_LCD_V );

    FT_Raster_Params  params;


    /* check glyph image format */
    if ( slot->format != render->glyph_format )
    {
      error = FUNC5( Invalid_Argument );
      goto Exit;
    }

    /* check mode */
    if ( mode != required_mode )
    {
      error = FUNC5( Cannot_Render_Glyph );
      goto Exit;
    }

    /* release old bitmap buffer */
    if ( slot->internal->flags & FT_GLYPH_OWN_BITMAP )
    {
      FUNC2( bitmap->buffer );
      slot->internal->flags &= ~FT_GLYPH_OWN_BITMAP;
    }

    FUNC6( slot, mode, origin );

    /* allocate new one */
    if ( FUNC1( bitmap->buffer, bitmap->rows, bitmap->pitch ) )
      goto Exit;

    slot->internal->flags |= FT_GLYPH_OWN_BITMAP;

    x_shift = 64 * -slot->bitmap_left;
    y_shift = 64 * -slot->bitmap_top;
    if ( bitmap->pixel_mode == FT_PIXEL_MODE_LCD_V )
      y_shift += 64 * (FT_Int)bitmap->rows / 3;
    else
      y_shift += 64 * (FT_Int)bitmap->rows;

    if ( origin )
    {
      x_shift += origin->x;
      y_shift += origin->y;
    }

    /* translate outline to render it into the bitmap */
    if ( x_shift || y_shift )
      FUNC4( outline, x_shift, y_shift );

    /* set up parameters */
    params.target = bitmap;
    params.source = outline;
    params.flags  = FT_RASTER_FLAG_AA;

#ifdef FT_CONFIG_OPTION_SUBPIXEL_RENDERING

    /* implode outline if needed */
    {
      FT_Vector*  points     = outline->points;
      FT_Vector*  points_end = points + outline->n_points;
      FT_Vector*  vec;


      if ( hmul )
        for ( vec = points; vec < points_end; vec++ )
          vec->x *= 3;

      if ( vmul )
        for ( vec = points; vec < points_end; vec++ )
          vec->y *= 3;
    }

    /* render outline into the bitmap */
    error = render->raster_render( render->raster, &params );

    /* deflate outline if needed */
    {
      FT_Vector*  points     = outline->points;
      FT_Vector*  points_end = points + outline->n_points;
      FT_Vector*  vec;


      if ( hmul )
        for ( vec = points; vec < points_end; vec++ )
          vec->x /= 3;

      if ( vmul )
        for ( vec = points; vec < points_end; vec++ )
          vec->y /= 3;
    }

    if ( error )
      goto Exit;

    /* finally apply filtering */
    if ( hmul || vmul )
    {
      FT_Byte*                 lcd_weights;
      FT_Bitmap_LcdFilterFunc  lcd_filter_func;


      /* Per-face LCD filtering takes priority if set up. */
      if ( slot->face && slot->face->internal->lcd_filter_func )
      {
        lcd_weights     = slot->face->internal->lcd_weights;
        lcd_filter_func = slot->face->internal->lcd_filter_func;
      }
      else
      {
        lcd_weights     = slot->library->lcd_weights;
        lcd_filter_func = slot->library->lcd_filter_func;
      }

      if ( lcd_filter_func )
        lcd_filter_func( bitmap, mode, lcd_weights );
    }

#else /* !FT_CONFIG_OPTION_SUBPIXEL_RENDERING */

    if ( hmul )  /* lcd */
    {
      FT_Byte*  line;
      FT_Byte*  temp = NULL;
      FT_UInt   i, j;

      unsigned int  height = bitmap->rows;
      unsigned int  width  = bitmap->width;
      int           pitch  = bitmap->pitch;


      /* Render 3 separate monochrome bitmaps, shifting the outline  */
      /* by 1/3 pixel.                                               */
      width /= 3;

      bitmap->buffer += width;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      FUNC4( outline, -21, 0 );
      x_shift        -= 21;
      bitmap->buffer += width;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      FUNC4( outline,  42, 0 );
      x_shift        += 42;
      bitmap->buffer -= 2 * width;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      /* XXX: Rearrange the bytes according to FT_PIXEL_MODE_LCD.    */
      /* XXX: It is more efficient to render every third byte above. */

      if ( FUNC0( temp, (FT_ULong)pitch ) )
        goto Exit;

      for ( i = 0; i < height; i++ )
      {
        line = bitmap->buffer + i * (FT_ULong)pitch;
        for ( j = 0; j < width; j++ )
        {
          temp[3 * j    ] = line[j];
          temp[3 * j + 1] = line[j + width];
          temp[3 * j + 2] = line[j + width + width];
        }
        FUNC3( line, temp, pitch );
      }

      FUNC2( temp );
    }
    else if ( vmul )  /* lcd_v */
    {
      int  pitch  = bitmap->pitch;


      /* Render 3 separate monochrome bitmaps, shifting the outline  */
      /* by 1/3 pixel. Triple the pitch to render on each third row. */
      bitmap->pitch *= 3;
      bitmap->rows  /= 3;

      bitmap->buffer += pitch;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      FUNC4( outline, 0,  21 );
      y_shift        += 21;
      bitmap->buffer += pitch;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      FUNC4( outline, 0, -42 );
      y_shift        -= 42;
      bitmap->buffer -= 2 * pitch;

      error = render->raster_render( render->raster, &params );
      if ( error )
        goto Exit;

      bitmap->pitch /= 3;
      bitmap->rows  *= 3;
    }
    else  /* grayscale */
      error = render->raster_render( render->raster, &params );

#endif /* !FT_CONFIG_OPTION_SUBPIXEL_RENDERING */

  Exit:
    if ( !error )
    {
      /* everything is fine; the glyph is now officially a bitmap */
      slot->format = FT_GLYPH_FORMAT_BITMAP;
    }
    else if ( slot->internal->flags & FT_GLYPH_OWN_BITMAP )
    {
      FUNC2( bitmap->buffer );
      slot->internal->flags &= ~FT_GLYPH_OWN_BITMAP;
    }

    if ( x_shift || y_shift )
      FUNC4( outline, -x_shift, -y_shift );

    return error;
  }