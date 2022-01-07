
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* input_config_get_device_name (unsigned int) ;

__attribute__((used)) static const char *android_joypad_name(unsigned pad)
{
   return input_config_get_device_name(pad);
}
