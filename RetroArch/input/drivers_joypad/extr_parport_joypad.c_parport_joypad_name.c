
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* ident; } ;


 unsigned int MAX_USERS ;
 TYPE_1__* parport_pads ;

__attribute__((used)) static const char *parport_joypad_name(unsigned pad)
{
   if (pad >= MAX_USERS)
      return ((void*)0);

   return *parport_pads[pad].ident ? parport_pads[pad].ident : ((void*)0);
}
