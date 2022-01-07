
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int midoutcnt; int* midoutbuf; int midflag; } ;


 int SCSP_MIDI_OUT_EMP ;
 int SCSP_MIDI_OUT_FUL ;
 TYPE_1__ scsp ;
 int scsp_main_interrupt (int) ;
 int scsp_sound_interrupt (int) ;

u8
scsp_midi_out_read (void)
{
  u8 data;

  scsp.midflag &= ~SCSP_MIDI_OUT_FUL;

  if (scsp.midoutcnt > 0)
    {
      if (scsp.midoutcnt == 1)
        {
          scsp.midflag |= SCSP_MIDI_OUT_EMP;
          scsp_sound_interrupt(0x200);
          scsp_main_interrupt(0x200);
        }

      data = scsp.midoutbuf[0];

      switch (--scsp.midoutcnt & 3)
        {
        case 1:
          scsp.midoutbuf[0] = scsp.midoutbuf[1];
          break;

        case 2:
          scsp.midoutbuf[0] = scsp.midoutbuf[1];
          scsp.midoutbuf[1] = scsp.midoutbuf[2];
          break;

        case 3:
          scsp.midoutbuf[0] = scsp.midoutbuf[1];
          scsp.midoutbuf[1] = scsp.midoutbuf[2];
          scsp.midoutbuf[2] = scsp.midoutbuf[3];
          break;
        }

      return data;
    }

  return 0xFF;
}
