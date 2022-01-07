
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct TYPE_2__ {int scale; } ;
typedef TYPE_1__ output_info_t ;
typedef int int32_t ;


 int RARCH_LOG (char*,int ) ;

__attribute__((used)) static void display_handle_scale(void *data,
      struct wl_output *output,
      int32_t factor)
{
   output_info_t *oi = (output_info_t*)data;

   RARCH_LOG("[Wayland]: Display scale factor %d.\n", factor);
   oi->scale = factor;
}
