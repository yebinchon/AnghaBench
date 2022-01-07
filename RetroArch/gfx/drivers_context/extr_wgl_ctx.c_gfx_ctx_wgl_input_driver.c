
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
struct TYPE_10__ {int * (* init ) (char const*) ;} ;
typedef TYPE_3__ input_driver_t ;


 TYPE_2__* config_get_ptr () ;
 int * dinput_wgl ;
 TYPE_3__ input_dinput ;
 TYPE_3__ input_winraw ;
 scalar_t__ string_is_equal (int ,char*) ;
 int * stub1 (char const*) ;
 int * stub2 (char const*) ;

__attribute__((used)) static void gfx_ctx_wgl_input_driver(void *data,
      const char *joypad_name,
      input_driver_t **input, void **input_data)
{
   settings_t *settings = config_get_ptr();
}
