
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int (* button ) (unsigned int,int ) ;} ;


 TYPE_1__** pad_drivers ;
 int stub1 (unsigned int,int ) ;
 int wiiu_joypad_query_pad (unsigned int) ;

__attribute__((used)) static bool wiiu_joypad_button(unsigned pad, uint16_t key)
{
   if (!wiiu_joypad_query_pad(pad))
      return 0;

   return pad_drivers[pad]->button(pad, key);
}
