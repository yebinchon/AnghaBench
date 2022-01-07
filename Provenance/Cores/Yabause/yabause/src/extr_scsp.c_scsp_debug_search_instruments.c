
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ const sa; } ;


 int NUM_DEBUG_INSTRUMENTS ;
 TYPE_1__* debug_instruments ;

void scsp_debug_search_instruments(const u32 sa, int* found, int * offset)
{
   int i = 0;
   *found = 0;
   for (i = 0; i < NUM_DEBUG_INSTRUMENTS; i++)
   {
      if (debug_instruments[i].sa == sa)
      {
         *found = 1;
         break;
      }
   }

   *offset = i;
}
