
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* current_output; } ;
typedef TYPE_2__ gfx_ctx_wayland_data_t ;
typedef enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;
struct TYPE_3__ {scalar_t__ physical_width; scalar_t__ physical_height; scalar_t__ width; } ;






__attribute__((used)) static bool gfx_ctx_wl_get_metrics(void *data,
      enum display_metric_types type, float *value)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   if (!wl || !wl->current_output || wl->current_output->physical_width == 0 || wl->current_output->physical_height == 0)
      return 0;

   switch (type)
   {
      case 128:
         *value = (float)wl->current_output->physical_width;
         break;

      case 129:
         *value = (float)wl->current_output->physical_height;
         break;

      case 130:
         *value = (float)wl->current_output->width * 25.4f / (float)wl->current_output->physical_width;
         break;

      default:
         *value = 0.0f;
         return 0;
   }

   return 1;
}
