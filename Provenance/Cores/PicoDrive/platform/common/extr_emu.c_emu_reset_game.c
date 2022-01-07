
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoReset () ;
 int reset_timing ;

void emu_reset_game(void)
{
 PicoReset();
 reset_timing = 1;
}
