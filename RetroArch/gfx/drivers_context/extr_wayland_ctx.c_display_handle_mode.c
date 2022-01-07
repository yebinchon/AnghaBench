
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_output {int dummy; } ;
struct TYPE_2__ {int width; int height; int refresh_rate; } ;
typedef TYPE_1__ output_info_t ;


 int RARCH_LOG (char*,int,int,int) ;

__attribute__((used)) static void display_handle_mode(void *data,
      struct wl_output *output,
      uint32_t flags,
      int width,
      int height,
      int refresh)
{
   (void)output;
   (void)flags;

   output_info_t *oi = (output_info_t*)data;
   oi->width = width;
   oi->height = height;
   oi->refresh_rate = refresh;



   RARCH_LOG("[Wayland]: Video mode: %d x %d @ %.4f Hz.\n",
         width, height, refresh > 1000 ? refresh / 1000.0 : (double)refresh);
}
