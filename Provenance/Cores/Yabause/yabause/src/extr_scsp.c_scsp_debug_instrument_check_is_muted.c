
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ is_muted; } ;


 int NUM_DEBUG_INSTRUMENTS ;
 TYPE_1__* debug_instruments ;
 int scsp_debug_search_instruments (int ,int*,int*) ;

int scsp_debug_instrument_check_is_muted(u32 sa)
{
   int found = 0, offset = 0;
   scsp_debug_search_instruments(sa, &found, &offset);

   if (offset >= NUM_DEBUG_INSTRUMENTS)
      return 0;

   if (found && debug_instruments[offset].is_muted)
      return 1;

   return 0;
}
