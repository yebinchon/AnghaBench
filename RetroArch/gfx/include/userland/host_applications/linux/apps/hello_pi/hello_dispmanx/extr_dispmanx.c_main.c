
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VC_RECT_T ;
typedef int VC_IMAGE_TYPE_T ;
struct TYPE_6__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ VC_DISPMANX_ALPHA_T ;
struct TYPE_8__ {int width; int height; } ;
struct TYPE_7__ {int image; int resource; int update; int display; int element; TYPE_4__ info; int vc_image_ptr; } ;
typedef TYPE_2__ RECT_VARS_T ;


 int ALIGN_UP (int,int) ;
 int DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS ;
 int DISPMANX_FLAGS_ALPHA_FROM_SOURCE ;
 int DISPMANX_PROTECTION_NONE ;
 int FillRect (int ,int,int,int,int,int,int,int,int) ;
 int HEIGHT ;
 int VC_IMAGE_RGB565 ;
 int VC_IMAGE_ROT0 ;
 int WIDTH ;
 int assert (int) ;
 int bcm_host_init () ;
 int calloc (int,int) ;
 TYPE_2__ gRectVars ;
 int printf (char*,...) ;
 int sleep (int) ;
 int vc_dispmanx_display_close (int ) ;
 int vc_dispmanx_display_get_info (int ,TYPE_4__*) ;
 int vc_dispmanx_display_open (int) ;
 int vc_dispmanx_element_add (int,int ,int,int *,int,int *,int ,TYPE_1__*,int *,int ) ;
 int vc_dispmanx_element_remove (int,int ) ;
 int vc_dispmanx_rect_set (int *,int,int,int,int) ;
 int vc_dispmanx_resource_create (int ,int,int,int *) ;
 int vc_dispmanx_resource_delete (int) ;
 int vc_dispmanx_resource_write_data (int,int ,int,int,int *) ;
 void* vc_dispmanx_update_start (int) ;
 int vc_dispmanx_update_submit_sync (int) ;

int main(void)
{
    RECT_VARS_T *vars;
    uint32_t screen = 0;
    int ret;
    VC_RECT_T src_rect;
    VC_RECT_T dst_rect;
    VC_IMAGE_TYPE_T type = VC_IMAGE_RGB565;
    int width = WIDTH, height = HEIGHT;
    int pitch = ALIGN_UP(width*2, 32);
    int aligned_height = ALIGN_UP(height, 16);
    VC_DISPMANX_ALPHA_T alpha = { DISPMANX_FLAGS_ALPHA_FROM_SOURCE | DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS,
                             120,
                             0 };

    vars = &gRectVars;

    bcm_host_init();

    printf("Open display[%i]...\n", screen );
    vars->display = vc_dispmanx_display_open( screen );

    ret = vc_dispmanx_display_get_info( vars->display, &vars->info);
    assert(ret == 0);
    printf( "Display is %d x %d\n", vars->info.width, vars->info.height );

    vars->image = calloc( 1, pitch * height );
    assert(vars->image);

    FillRect( type, vars->image, pitch, aligned_height, 0, 0, width, height, 0xFFFF );
    FillRect( type, vars->image, pitch, aligned_height, 0, 0, width, height, 0xF800 );
    FillRect( type, vars->image, pitch, aligned_height, 20, 20, width - 40, height - 40, 0x07E0 );
    FillRect( type, vars->image, pitch, aligned_height, 40, 40, width - 80, height - 80, 0x001F );

    vars->resource = vc_dispmanx_resource_create( type,
                                                  width,
                                                  height,
                                                  &vars->vc_image_ptr );
    assert( vars->resource );
    vc_dispmanx_rect_set( &dst_rect, 0, 0, width, height);
    ret = vc_dispmanx_resource_write_data( vars->resource,
                                            type,
                                            pitch,
                                            vars->image,
                                            &dst_rect );
    assert( ret == 0 );
    vars->update = vc_dispmanx_update_start( 10 );
    assert( vars->update );

    vc_dispmanx_rect_set( &src_rect, 0, 0, width << 16, height << 16 );

    vc_dispmanx_rect_set( &dst_rect, ( vars->info.width - width ) / 2,
                                     ( vars->info.height - height ) / 2,
                                     width,
                                     height );

    vars->element = vc_dispmanx_element_add( vars->update,
                                                vars->display,
                                                2000,
                                                &dst_rect,
                                                vars->resource,
                                                &src_rect,
                                                DISPMANX_PROTECTION_NONE,
                                                &alpha,
                                                ((void*)0),
                                                VC_IMAGE_ROT0 );

    ret = vc_dispmanx_update_submit_sync( vars->update );
    assert( ret == 0 );

    printf( "Sleeping for 10 seconds...\n" );
    sleep( 10 );

    vars->update = vc_dispmanx_update_start( 10 );
    assert( vars->update );
    ret = vc_dispmanx_element_remove( vars->update, vars->element );
    assert( ret == 0 );
    ret = vc_dispmanx_update_submit_sync( vars->update );
    assert( ret == 0 );
    ret = vc_dispmanx_resource_delete( vars->resource );
    assert( ret == 0 );
    ret = vc_dispmanx_display_close( vars->display );
    assert( ret == 0 );

    return 0;
}
