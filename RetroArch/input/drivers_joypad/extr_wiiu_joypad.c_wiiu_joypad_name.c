
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* (* name ) (unsigned int) ;} ;


 TYPE_1__** pad_drivers ;
 char const* stub1 (unsigned int) ;
 int wiiu_joypad_query_pad (unsigned int) ;

__attribute__((used)) static const char* wiiu_joypad_name(unsigned pad)
{
   if (!wiiu_joypad_query_pad(pad))
      return "N/A";

   return pad_drivers[pad]->name(pad);
}
