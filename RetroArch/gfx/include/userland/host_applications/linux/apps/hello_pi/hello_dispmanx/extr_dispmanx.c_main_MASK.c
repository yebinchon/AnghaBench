#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  VC_RECT_T ;
typedef  int /*<<< orphan*/  VC_IMAGE_TYPE_T ;
struct TYPE_6__ {int member_0; int member_1; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_1__ VC_DISPMANX_ALPHA_T ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {int image; int resource; int update; int /*<<< orphan*/  display; int /*<<< orphan*/  element; TYPE_4__ info; int /*<<< orphan*/  vc_image_ptr; } ;
typedef  TYPE_2__ RECT_VARS_T ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS ; 
 int DISPMANX_FLAGS_ALPHA_FROM_SOURCE ; 
 int /*<<< orphan*/  DISPMANX_PROTECTION_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 
 int HEIGHT ; 
 int /*<<< orphan*/  VC_IMAGE_RGB565 ; 
 int /*<<< orphan*/  VC_IMAGE_ROT0 ; 
 int WIDTH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int) ; 
 TYPE_2__ gRectVars ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC16 (int) ; 
 int FUNC17 (int) ; 

int FUNC18(void)
{
    RECT_VARS_T    *vars;
    uint32_t        screen = 0;
    int             ret;
    VC_RECT_T       src_rect;
    VC_RECT_T       dst_rect;
    VC_IMAGE_TYPE_T type = VC_IMAGE_RGB565;
    int width = WIDTH, height = HEIGHT;
    int pitch = FUNC0(width*2, 32);
    int aligned_height = FUNC0(height, 16);
    VC_DISPMANX_ALPHA_T alpha = { DISPMANX_FLAGS_ALPHA_FROM_SOURCE | DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS,
                             120, /*alpha 0->255*/
                             0 };

    vars = &gRectVars;

    FUNC3();

    FUNC5("Open display[%i]...\n", screen );
    vars->display = FUNC9( screen );

    ret = FUNC8( vars->display, &vars->info);
    FUNC2(ret == 0);
    FUNC5( "Display is %d x %d\n", vars->info.width, vars->info.height );

    vars->image = FUNC4( 1, pitch * height );
    FUNC2(vars->image);

    FUNC1( type, vars->image, pitch, aligned_height,  0,  0, width,      height,      0xFFFF );
    FUNC1( type, vars->image, pitch, aligned_height,  0,  0, width,      height,      0xF800 );
    FUNC1( type, vars->image, pitch, aligned_height, 20, 20, width - 40, height - 40, 0x07E0 );
    FUNC1( type, vars->image, pitch, aligned_height, 40, 40, width - 80, height - 80, 0x001F );

    vars->resource = FUNC13( type,
                                                  width,
                                                  height,
                                                  &vars->vc_image_ptr );
    FUNC2( vars->resource );
    FUNC12( &dst_rect, 0, 0, width, height);
    ret = FUNC15(  vars->resource,
                                            type,
                                            pitch,
                                            vars->image,
                                            &dst_rect );
    FUNC2( ret == 0 );
    vars->update = FUNC16( 10 );
    FUNC2( vars->update );

    FUNC12( &src_rect, 0, 0, width << 16, height << 16 );

    FUNC12( &dst_rect, ( vars->info.width - width ) / 2,
                                     ( vars->info.height - height ) / 2,
                                     width,
                                     height );

    vars->element = FUNC10(    vars->update,
                                                vars->display,
                                                2000,               // layer
                                                &dst_rect,
                                                vars->resource,
                                                &src_rect,
                                                DISPMANX_PROTECTION_NONE,
                                                &alpha,
                                                NULL,             // clamp
                                                VC_IMAGE_ROT0 );

    ret = FUNC17( vars->update );
    FUNC2( ret == 0 );

    FUNC5( "Sleeping for 10 seconds...\n" );
    FUNC6( 10 );

    vars->update = FUNC16( 10 );
    FUNC2( vars->update );
    ret = FUNC11( vars->update, vars->element );
    FUNC2( ret == 0 );
    ret = FUNC17( vars->update );
    FUNC2( ret == 0 );
    ret = FUNC14( vars->resource );
    FUNC2( ret == 0 );
    ret = FUNC7( vars->display );
    FUNC2( ret == 0 );

    return 0;
}