
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float refresh_rate; } ;
typedef TYPE_1__ mali_ctx_data_t ;



__attribute__((used)) static float gfx_ctx_mali_fbdev_get_refresh_rate(void *data)
{
   mali_ctx_data_t *mali = (mali_ctx_data_t*)data;

   return mali->refresh_rate;
}
