
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int is_muted; int sa; } ;


 int NUM_DEBUG_INSTRUMENTS ;
 TYPE_1__* debug_instruments ;

void scsp_debug_instrument_get_data(int i, u32 * sa, int * is_muted)
{
   if(i >= NUM_DEBUG_INSTRUMENTS)
      return;

   *sa = debug_instruments[i].sa;
   *is_muted = debug_instruments[i].is_muted;
}
