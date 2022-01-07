
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; int dx; int dy; int flags; } ;
typedef TYPE_1__ vc_progress_element ;
struct TYPE_5__ {int v_width; int v_height; } ;


 int kDataIndexed ;
 int vc_blit_rect (int,int,int ,int,int,int,int ,unsigned char const*,int *,int ) ;
 int vc_clean_boot_graphics () ;
 scalar_t__ vc_clut ;
 scalar_t__ vc_progress_enable ;
 TYPE_2__ vinfo ;

void vc_display_icon( vc_progress_element * desc,
   const unsigned char * data )
{
    int x, y, width, height;

    if( vc_progress_enable && vc_clut) {

 vc_clean_boot_graphics();

 width = desc->width;
 height = desc->height;
 x = desc->dx;
 y = desc->dy;
 if( 1 & desc->flags) {
     x += ((vinfo.v_width - width) / 2);
     y += ((vinfo.v_height - height) / 2);
 }
 vc_blit_rect( x, y, 0, width, height, width, 0, data, ((void*)0), kDataIndexed );
    }
}
