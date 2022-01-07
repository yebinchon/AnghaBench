
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int pointer ;
struct TYPE_4__ {int (* SetFetch ) (int,int,int ) ;} ;
struct TYPE_3__ {int mem4b; int mvol; int rbl; int rbp; int mslc; int dmea; int drga; int dmlen; int dmfl; int timasd; int timacnt; int timbsd; int timbcnt; int timcsd; int timccnt; int scieb; int scipd; int scilv0; int scilv1; int scilv2; int mcieb; int mcipd; } ;


 TYPE_2__* M68K ;
 int SCSPLOG (char*,int,int) ;
 int SoundRam ;
 TYPE_1__ scsp ;
 int * scsp_ccr ;
 int scsp_dma () ;
 int scsp_main_interrupt (int) ;
 int scsp_midi_out_send (int) ;
 int scsp_sound_interrupt (int) ;
 int scsp_trigger_main_interrupt (int) ;
 int scsp_trigger_sound_interrupt (int) ;
 int scsp_update_monitor () ;
 int stub1 (int,int,int ) ;
 int stub2 (int,int,int ) ;
 int stub3 (int,int,int ) ;
 int stub4 (int,int,int ) ;
 int stub5 (int,int,int ) ;

__attribute__((used)) static void
scsp_set_w (u32 a, u16 d)
{
  if ((a != 0x418) && (a != 0x41A) && (a != 0x422))
    {
      SCSPLOG("scsp : reg %.2X = %.4X\n", a & 0x3E, d);
    }

  *(u16 *)&scsp_ccr[a ^ 2] = d;

  switch (a & 0x3E)
    {
    case 0x00:
      scsp.mem4b = (d >> 9) & 0x1;
      scsp.mvol = d & 0xF;
      if (scsp.mem4b)
        {
          M68K->SetFetch(0x000000, 0x080000, (pointer)SoundRam);
        }
      else
        {
          M68K->SetFetch(0x000000, 0x040000, (pointer)SoundRam);
          M68K->SetFetch(0x040000, 0x080000, (pointer)SoundRam);
          M68K->SetFetch(0x080000, 0x0C0000, (pointer)SoundRam);
          M68K->SetFetch(0x0C0000, 0x100000, (pointer)SoundRam);
        }
      return;

    case 0x02:
      scsp.rbl = (d >> 7) & 3;



      scsp.rbp = (d & 0x7F) * (4 * 1024 * 2);

      return;

    case 0x06:
      scsp_midi_out_send(d & 0xFF);
      return;

    case 0x08:
      scsp.mslc = (d >> 11) & 0x1F;
      scsp_update_monitor();
      return;

    case 0x12:
      scsp.dmea = (scsp.dmea & 0x70000) + (d & 0xFFFE);
      return;

    case 0x14:
      scsp.dmea = (scsp.dmea & 0xFFFE) + ((d & 0x7000) << 4);
      scsp.drga = d & 0xFFE;
      return;

    case 0x16:
      scsp.dmlen = d & 0xFFE;
      if ((scsp.dmfl = ((d >> 8) & 0xF0)) & 0x10) scsp_dma ();
      return;

    case 0x18:
      scsp.timasd = (d >> 8) & 7;
      scsp.timacnt = (d & 0xFF) << 8;
      return;

    case 0x1A:
      scsp.timbsd = (d >> 8) & 7;
      scsp.timbcnt = (d & 0xFF) << 8;
      return;

    case 0x1C:
      scsp.timcsd = (d >> 8) & 7;
      scsp.timccnt = (d & 0xFF) << 8;
      return;

    case 0x1E:
    {
      int i;
      scsp.scieb = d;
      for (i = 0; i < 11; i++)
        {
          if (scsp.scieb & (1 << i) && scsp.scipd & (1 << i))
            scsp_trigger_sound_interrupt ((1 << i));
        }
      return;
    }
    case 0x20:
      if (d & 0x20) scsp_sound_interrupt (0x20);
      return;

    case 0x22:
      scsp.scipd &= ~d;
      return;

    case 0x24:
      scsp.scilv0 = d;
      return;

    case 0x26:
      scsp.scilv1 = d;
      return;

    case 0x28:
      scsp.scilv2 = d;
      return;

    case 0x2A:
    {
      int i;
      scsp.mcieb = d;
      for (i = 0; i < 11; i++)
        {
          if (scsp.mcieb & (1 << i) && scsp.mcipd & (1 << i))
            scsp_trigger_main_interrupt ((1 << i));
        }
      return;
    }

    case 0x2C:
      if (d & 0x20) scsp_main_interrupt (0x20);
      return;

    case 0x2E:
      scsp.mcipd &= ~d;
      return;
    }
}
