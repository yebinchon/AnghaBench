
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** XBOX_CONTROLLER_NAMES ;

__attribute__((used)) static const char *xdk_joypad_name(unsigned pad)
{
   return XBOX_CONTROLLER_NAMES[pad];
}
