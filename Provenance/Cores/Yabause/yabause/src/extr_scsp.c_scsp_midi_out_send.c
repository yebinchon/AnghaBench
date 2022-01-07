
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int midoutcnt; int midflag; int * midoutbuf; } ;


 int SCSP_MIDI_OUT_EMP ;
 int SCSP_MIDI_OUT_FUL ;
 TYPE_1__ scsp ;

void
scsp_midi_out_send (u8 data)
{
  scsp.midflag &= ~SCSP_MIDI_OUT_EMP;

  if (scsp.midoutcnt > 3) return;

  scsp.midoutbuf[scsp.midoutcnt++] = data;

  if (scsp.midoutcnt > 3) scsp.midflag |= SCSP_MIDI_OUT_FUL;
}
