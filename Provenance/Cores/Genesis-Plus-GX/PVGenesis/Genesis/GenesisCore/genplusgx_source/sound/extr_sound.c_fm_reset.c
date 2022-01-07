
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YM_Reset () ;
 int fm_update (unsigned int) ;

void fm_reset(unsigned int cycles)
{

  fm_update(cycles);


  YM_Reset();
}
