
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int is_muted; } ;


 int NUM_DEBUG_INSTRUMENTS ;
 TYPE_1__* debug_instruments ;
 int scsp_debug_search_instruments (int ,int*,int*) ;

void scsp_debug_instrument_set_mute(u32 sa, int mute)
{
   int found = 0, offset = 0;
   scsp_debug_search_instruments(sa, &found, &offset);

   if (offset >= NUM_DEBUG_INSTRUMENTS)
      return;

   if (found)
      debug_instruments[offset].is_muted = mute;
}
