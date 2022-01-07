
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_input_poll_t ;


 int dummy_input_poll_cb ;

void libretro_dummy_retro_set_input_poll(retro_input_poll_t cb)
{
   dummy_input_poll_cb = cb;
}
