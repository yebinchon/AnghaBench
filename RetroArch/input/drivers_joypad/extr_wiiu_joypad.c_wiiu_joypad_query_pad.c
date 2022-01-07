
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* query_pad ) (unsigned int) ;} ;


 unsigned int MAX_USERS ;
 TYPE_1__** pad_drivers ;
 scalar_t__ ready ;
 scalar_t__ stub1 (unsigned int) ;

__attribute__((used)) static bool wiiu_joypad_query_pad(unsigned pad)
{
   return ready &&
      pad < MAX_USERS &&
      pad_drivers[pad] != ((void*)0) &&
      pad_drivers[pad]->query_pad(pad);
}
