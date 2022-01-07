
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ joypad; } ;


 unsigned int MAX_USERS ;
 TYPE_1__* sdl_pads ;

__attribute__((used)) static bool sdl_joypad_query_pad(unsigned pad)
{
   return pad < MAX_USERS && sdl_pads[pad].joypad;
}
