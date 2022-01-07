
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int miovf; int mifull; scalar_t__ midi_in_cnt; int mibuf; int* midi_in_buf; int miemp; int mofull; int moemp; } ;


 int SCSP_INTERRUPT_MIDI_IN ;
 int SCSP_INTTARGET_BOTH ;
 int ScspRaiseInterrupt (int ,int ) ;
 TYPE_1__ scsp ;

__attribute__((used)) static u16 ScspMidiIn(void)
{
   scsp.miovf = 0;
   scsp.mifull = 0;
   if (scsp.midi_in_cnt > 0)
   {
      scsp.mibuf = scsp.midi_in_buf[0];
      scsp.midi_in_buf[0] = scsp.midi_in_buf[1];
      scsp.midi_in_buf[1] = scsp.midi_in_buf[2];
      scsp.midi_in_buf[2] = scsp.midi_in_buf[3];
      scsp.midi_in_cnt--;
      scsp.miemp = (scsp.midi_in_cnt == 0);
      if (!scsp.miemp)
         ScspRaiseInterrupt(SCSP_INTERRUPT_MIDI_IN, SCSP_INTTARGET_BOTH);
   }
   else
      scsp.mibuf = 0xFF;

   return scsp.mofull << 12
        | scsp.moemp << 11
        | scsp.miovf << 10
        | scsp.mifull << 9
        | scsp.miemp << 8
        | scsp.mibuf << 0;
}
