
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DebugInstrument {int dummy; } ;


 int NUM_DEBUG_INSTRUMENTS ;
 scalar_t__ debug_instrument_pos ;
 int debug_instruments ;
 int memset (int ,int ,int) ;

void scsp_debug_instrument_clear()
{
   debug_instrument_pos = 0;
   memset(debug_instruments, 0, sizeof(struct DebugInstrument) * NUM_DEBUG_INSTRUMENTS);
}
