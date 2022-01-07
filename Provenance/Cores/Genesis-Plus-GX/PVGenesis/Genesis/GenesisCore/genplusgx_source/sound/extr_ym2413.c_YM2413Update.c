
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rhythm; int noise_rng; int status; int * P_CH; } ;


 int advance () ;
 int advance_lfo () ;
 int chan_calc (int *) ;
 int* output ;
 int rhythm_calc (int *,int) ;
 TYPE_1__ ym2413 ;

void YM2413Update(int *buffer, int length)
{
  int i, out;

  for( i=0; i < length ; i++ )
  {
    output[0] = 0;
    output[1] = 0;

    advance_lfo();


    chan_calc(&ym2413.P_CH[0]);
    chan_calc(&ym2413.P_CH[1]);
    chan_calc(&ym2413.P_CH[2]);
    chan_calc(&ym2413.P_CH[3]);
    chan_calc(&ym2413.P_CH[4]);
    chan_calc(&ym2413.P_CH[5]);

    if(!(ym2413.rhythm&0x20))
    {
      chan_calc(&ym2413.P_CH[6]);
      chan_calc(&ym2413.P_CH[7]);
      chan_calc(&ym2413.P_CH[8]);
    }
    else
    {
      rhythm_calc(&ym2413.P_CH[0], (ym2413.noise_rng>>0)&1 );
    }


    out = (output[0] + (output[1] * 2)) * 2 * ym2413.status;


    *buffer++ = out;
    *buffer++ = out;

    advance();
  }
}
