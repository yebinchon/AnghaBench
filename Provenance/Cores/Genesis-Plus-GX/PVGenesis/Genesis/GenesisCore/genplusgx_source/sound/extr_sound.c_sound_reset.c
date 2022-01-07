
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SN76489_Reset () ;
 int YM_Reset () ;
 int fm_buffer ;
 scalar_t__ fm_cycles_count ;
 scalar_t__ fm_cycles_start ;
 scalar_t__* fm_last ;
 int fm_ptr ;

void sound_reset(void)
{

  YM_Reset();
  SN76489_Reset();


  fm_last[0] = fm_last[1] = 0;


  fm_ptr = fm_buffer;


  fm_cycles_start = fm_cycles_count = 0;
}
