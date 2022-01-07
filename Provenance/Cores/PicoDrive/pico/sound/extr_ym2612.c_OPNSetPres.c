
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {double freqbase; double rate; scalar_t__ clock; } ;
struct TYPE_5__ {int eg_timer_add; double* lfo_freq; TYPE_1__ ST; } ;
struct TYPE_6__ {TYPE_2__ OPN; } ;


 int EG_SH ;
 int FREQ_SH ;
 int LFO_SH ;
 int dt_tab ;
 scalar_t__* fn_table ;
 int init_timetables (int ) ;
 double* lfo_samples_per_step ;
 TYPE_3__ ym2612 ;

__attribute__((used)) static void OPNSetPres(int pres)
{
 int i;


 ym2612.OPN.ST.freqbase = (ym2612.OPN.ST.rate) ? ((double)ym2612.OPN.ST.clock / ym2612.OPN.ST.rate) / pres : 0;

 ym2612.OPN.eg_timer_add = (1<<EG_SH) * ym2612.OPN.ST.freqbase;


 init_timetables( dt_tab );




 for(i = 0; i < 4096; i++)
 {


  fn_table[i] = (UINT32)( (double)i * 32 * ym2612.OPN.ST.freqbase * (1<<(FREQ_SH-10)) );
 }


 for(i = 0; i < 8; i++)
 {


  ym2612.OPN.lfo_freq[i] = (1.0 / lfo_samples_per_step[i]) * (1<<LFO_SH) * ym2612.OPN.ST.freqbase;
 }
}
