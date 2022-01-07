
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_5__ {scalar_t__ has_all_assets; } ;
typedef TYPE_1__ ozone_handle_t ;


 int ozone_draw_cursor_fallback (TYPE_1__*,int *,int,unsigned int,unsigned int,size_t,float) ;
 int ozone_draw_cursor_slice (TYPE_1__*,int *,int,unsigned int,unsigned int,size_t,float) ;

void ozone_draw_cursor(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      int x_offset,
      unsigned width, unsigned height,
      size_t y, float alpha)
{
   if (ozone->has_all_assets)
      ozone_draw_cursor_slice(ozone, video_info, x_offset, width, height, y, alpha);
   else
      ozone_draw_cursor_fallback(ozone, video_info, x_offset, width, height, y, alpha);
}
