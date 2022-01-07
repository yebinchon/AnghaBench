
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sa; } ;


 scalar_t__ NUM_DEBUG_INSTRUMENTS ;
 scalar_t__ debug_instrument_pos ;
 TYPE_1__* debug_instruments ;
 int scsp_debug_search_instruments (int ,int*,int*) ;

void scsp_debug_add_instrument(u32 sa)
{
   int i = 0, found = 0, offset = 0;

   if (debug_instrument_pos >= NUM_DEBUG_INSTRUMENTS)
      return;

   scsp_debug_search_instruments(sa, &found, &offset);


   if (!found)
      debug_instruments[debug_instrument_pos++].sa = sa;
}
