#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct SwsContext {int dummy; } ;
struct TYPE_11__ {int width; int height; } ;
struct TYPE_12__ {TYPE_3__ geometry; int /*<<< orphan*/  color_matrix; } ;
typedef  TYPE_4__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_image_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
struct TYPE_9__ {int num; int den; } ;
struct TYPE_10__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_13__ {scalar_t__* crop; TYPE_2__ geometry; } ;
typedef  TYPE_5__ hb_geometry_settings_t ;
typedef  int /*<<< orphan*/  hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_RGB32 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/  HB_MAX_HEIGHT ; 
 int /*<<< orphan*/  HB_MAX_WIDTH ; 
 int /*<<< orphan*/  HB_MIN_HEIGHT ; 
 int /*<<< orphan*/  HB_MIN_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SWS_ACCURATE_RND ; 
 int SWS_LANCZOS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 struct SwsContext* FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct SwsContext*) ; 
 int /*<<< orphan*/  FUNC16 (struct SwsContext*,int /*<<< orphan*/  const* const*,int*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **,int*) ; 

hb_image_t* FUNC17(hb_handle_t * h, int title_idx, int picture,
                            hb_geometry_settings_t *geo, int deinterlace)
{
    char                 filename[1024];
    hb_buffer_t        * in_buf = NULL, * deint_buf = NULL;
    hb_buffer_t        * preview_buf = NULL;
    uint32_t             swsflags;
    uint8_t            * preview_data[4], * crop_data[4];
    int                  preview_stride[4], crop_stride[4];
    struct SwsContext  * context;

    int width = geo->geometry.width *
                geo->geometry.par.num / geo->geometry.par.den;
    int height = geo->geometry.height;

    // Set min/max dimensions to prevent failure to initialize
    // sws context and absurd sizes.
    //
    // This means output image size may not match requested image size!
    int ww = width, hh = height;
    width  = FUNC1(FUNC0(width,                HB_MIN_WIDTH),  HB_MAX_WIDTH);
    height = FUNC1(FUNC0(height * width  / ww, HB_MIN_HEIGHT), HB_MAX_HEIGHT);
    width  = FUNC1(FUNC0(width  * height / hh, HB_MIN_WIDTH),  HB_MAX_WIDTH);

    swsflags = SWS_LANCZOS | SWS_ACCURATE_RND;

    preview_buf = FUNC7(AV_PIX_FMT_RGB32, width, height);
    // fill in AVPicture
    FUNC10( preview_data, preview_stride, preview_buf );


    FUNC14( filename, 0, 1024 );

    hb_title_t * title;
    title = FUNC6(h, title_idx);
    if (title == NULL)
    {
        FUNC5( "hb_get_preview2: invalid title (%d)", title_idx );
        goto fail;
    }

    in_buf = FUNC11( h, title, picture );
    if ( in_buf == NULL )
    {
        goto fail;
    }

    if (deinterlace)
    {
        // Deinterlace and crop
        deint_buf = FUNC7( AV_PIX_FMT_YUV420P,
                              title->geometry.width, title->geometry.height );
        FUNC4(deint_buf, in_buf);
        FUNC9(crop_data, crop_stride, deint_buf,
                        geo->crop[0], geo->crop[2] );
    }
    else
    {
        // Crop
        FUNC9(crop_data, crop_stride, in_buf,
                        geo->crop[0], geo->crop[2] );
    }

    int colorspace = FUNC12(title->color_matrix);

    // Get scaling context
    context = FUNC13(
                title->geometry.width  - (geo->crop[2] + geo->crop[3]),
                title->geometry.height - (geo->crop[0] + geo->crop[1]),
                AV_PIX_FMT_YUV420P, width, height, AV_PIX_FMT_RGB32, swsflags, colorspace);

    if (context == NULL)
    {
        // if by chance hb_sws_get_context fails, don't crash in sws_scale
        goto fail;
    }

    // Scale
    FUNC16(context,
              (const uint8_t * const *)crop_data, crop_stride,
              0, title->geometry.height - (geo->crop[0] + geo->crop[1]),
              preview_data, preview_stride);

    // Free context
    FUNC15( context );

    hb_image_t *image = FUNC3(preview_buf);

    // Clean up
    FUNC2( &in_buf );
    FUNC2( &deint_buf );
    FUNC2( &preview_buf );

    return image;

fail:

    FUNC2( &in_buf );
    FUNC2( &deint_buf );
    FUNC2( &preview_buf );

    image = FUNC8(AV_PIX_FMT_RGB32, width, height);
    return image;
}