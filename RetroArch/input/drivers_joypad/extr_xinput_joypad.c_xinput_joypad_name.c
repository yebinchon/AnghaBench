
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* name ) (unsigned int) ;} ;


 char const** XBOX_CONTROLLER_NAMES ;
 char const** XBOX_ONE_CONTROLLER_NAMES ;
 TYPE_1__ dinput_joypad ;
 int pad_index_to_xuser_index (unsigned int) ;
 scalar_t__ strstr (char const*,char*) ;
 char const* stub1 (unsigned int) ;
 char const* stub2 (unsigned int) ;

const char *xinput_joypad_name(unsigned pad)
{
   int xuser = pad_index_to_xuser_index(pad);
   if (xuser < 0)
      return ((void*)0);

   return XBOX_CONTROLLER_NAMES[xuser];
}
