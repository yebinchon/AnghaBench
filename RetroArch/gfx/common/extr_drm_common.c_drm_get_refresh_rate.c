
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float clock; float htotal; float vtotal; } ;


 TYPE_1__* g_drm_mode ;

float drm_get_refresh_rate(void *data)
{
   float refresh_rate = 0.0f;

   if (g_drm_mode)
   {
      refresh_rate = g_drm_mode->clock * 1000.0f / g_drm_mode->htotal / g_drm_mode->vtotal;
   }

   return refresh_rate;
}
