
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* SLOT; } ;
typedef TYPE_2__ YM2413_OPLL_CH ;
struct TYPE_6__ {int noise_rng; TYPE_2__* P_CH; int ** inst_tab; scalar_t__ eg_cnt; scalar_t__ eg_timer; } ;
struct TYPE_4__ {int volume; int state; scalar_t__ wavetable; } ;


 int EG_OFF ;
 int MAX_ATT_INDEX ;
 int OPLLWriteReg (int,int) ;
 int ** table ;
 TYPE_3__ ym2413 ;

void YM2413ResetChip(void)
{
  int c,s;
  int i;

  ym2413.eg_timer = 0;
  ym2413.eg_cnt = 0;

  ym2413.noise_rng = 1;



  for (i=0; i<19; i++)
  {
    for (c=0; c<8; c++)
    {
      ym2413.inst_tab[i][c] = table[i][c];
    }
  }



  OPLLWriteReg(0x0f,0);
  for(i = 0x3f ; i >= 0x10 ; i-- ) OPLLWriteReg(i,0x00);


  for( c = 0 ; c < 9 ; c++ )
  {
    YM2413_OPLL_CH *CH = &ym2413.P_CH[c];
    for(s = 0 ; s < 2 ; s++ )
    {

      CH->SLOT[s].wavetable = 0;
      CH->SLOT[s].state = EG_OFF;
      CH->SLOT[s].volume = MAX_ATT_INDEX;
    }
  }
}
