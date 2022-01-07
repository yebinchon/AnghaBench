
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int input_driver; } ;
struct TYPE_9__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_10__ {void* (* init ) (char const*) ;} ;
typedef TYPE_3__ input_driver_t ;


 TYPE_2__* config_get_ptr () ;
 TYPE_3__ input_udev ;
 TYPE_3__ input_x ;
 scalar_t__ string_is_equal (int ,char*) ;
 void* stub1 (char const*) ;
 void* stub2 (char const*) ;

__attribute__((used)) static void gfx_ctx_x_input_driver(void *data,
      const char *joypad_name,
      input_driver_t **input, void **input_data)
{
   void *x_input = ((void*)0);
   x_input = input_x.init(joypad_name);
   *input = x_input ? &input_x : ((void*)0);
   *input_data = x_input;
}
