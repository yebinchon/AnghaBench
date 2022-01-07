
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_driver_t ;
struct TYPE_2__ {int input; } ;
typedef TYPE_1__ gfx_ctx_wayland_data_t ;


 int input_wayland ;
 int input_wl_init (int *,char const*) ;

__attribute__((used)) static void gfx_ctx_wl_input_driver(void *data,
      const char *joypad_name,
      input_driver_t **input, void **input_data)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;


   if (!input_wl_init(&wl->input, joypad_name))
   {
      *input = ((void*)0);
      *input_data = ((void*)0);
   }
   else
   {
      *input = &input_wayland;
      *input_data = &wl->input;
   }
}
