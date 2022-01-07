
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ident; } ;


 unsigned int MAX_USERS ;
 TYPE_1__* linuxraw_pads ;
 scalar_t__ string_is_empty (char const*) ;

__attribute__((used)) static const char *linuxraw_joypad_name(unsigned pad)
{
   if (pad >= MAX_USERS || string_is_empty(linuxraw_pads[pad].ident))
      return ((void*)0);

   return linuxraw_pads[pad].ident;
}
