
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* init ) (char const*) ;} ;
typedef TYPE_1__ input_driver_t ;


 TYPE_1__ input_udev ;
 void* stub1 (char const*) ;

__attribute__((used)) static void gfx_ctx_network_input_driver(void *data,
      const char *joypad_name,
      input_driver_t **input, void **input_data)
{
   (void)data;
   *input = ((void*)0);
   *input_data = ((void*)0);
}
