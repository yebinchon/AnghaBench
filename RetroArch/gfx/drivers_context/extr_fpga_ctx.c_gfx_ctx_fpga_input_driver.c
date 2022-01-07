
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int settings_t ;
typedef int input_driver_t ;


 int * config_get_ptr () ;

__attribute__((used)) static void gfx_ctx_fpga_input_driver(void *data,
      const char *joypad_name,
      const input_driver_t **input, void **input_data)
{
   (void)data;
   settings_t *settings = config_get_ptr();
}
