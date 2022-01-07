
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* init ) (char const*) ;} ;
typedef TYPE_1__ input_driver_t ;


 TYPE_1__ input_android ;
 void* stub1 (char const*) ;

__attribute__((used)) static void android_gfx_ctx_input_driver(void *data,
      const char *joypad_name,
      input_driver_t **input, void **input_data)
{
   void *androidinput = input_android.init(joypad_name);

   *input = androidinput ? &input_android : ((void*)0);
   *input_data = androidinput;
}
