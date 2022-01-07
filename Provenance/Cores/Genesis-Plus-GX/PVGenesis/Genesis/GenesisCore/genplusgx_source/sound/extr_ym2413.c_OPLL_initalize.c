
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_2__ {double lfo_am_inc; double lfo_pm_inc; double noise_f; int eg_timer_add; int eg_timer_overflow; scalar_t__* fn_tab; } ;


 int EG_SH ;
 int FREQ_SH ;
 int LFO_SH ;
 TYPE_1__ ym2413 ;

__attribute__((used)) static void OPLL_initalize(void)
{
  int i;


  double freqbase = 1.0;


  for( i = 0 ; i < 1024; i++ )
  {

    ym2413.fn_tab[i] = (UINT32)( (double)i * 64 * freqbase * (1<<(FREQ_SH-10)) );
  }



  ym2413.lfo_am_inc = (1.0 / 64.0 ) * (1<<LFO_SH) * freqbase;


  ym2413.lfo_pm_inc = (1.0 / 1024.0) * (1<<LFO_SH) * freqbase;


  ym2413.noise_f = (1.0 / 1.0) * (1<<FREQ_SH) * freqbase;

  ym2413.eg_timer_add = (1<<EG_SH) * freqbase;
  ym2413.eg_timer_overflow = ( 1 ) * (1<<EG_SH);
}
