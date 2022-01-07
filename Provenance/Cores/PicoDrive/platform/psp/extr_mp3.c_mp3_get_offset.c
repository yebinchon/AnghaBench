
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status_CDC; } ;
struct TYPE_4__ {int* s68k_regs; TYPE_1__ scd; } ;


 int PAHW_MCD ;
 int PicoAHW ;
 int PicoOpt ;
 TYPE_2__* Pico_mcd ;
 int lprintf (char*,unsigned int,int,int) ;
 scalar_t__ mp3_handle ;
 int mp3_src_pos ;
 int mp3_src_size ;

int mp3_get_offset(void)
{
 unsigned int offs1024 = 0;
 int cdda_on;

 cdda_on = (PicoAHW & PAHW_MCD) && (PicoOpt&0x800) && !(Pico_mcd->s68k_regs[0x36] & 1) &&
   (Pico_mcd->scd.Status_CDC & 1) && mp3_handle >= 0;

 if (cdda_on) {
  offs1024 = mp3_src_pos << 7;
  offs1024 /= mp3_src_size >> 3;
 }
 lprintf("offs1024=%u (%i/%i)\n", offs1024, mp3_src_pos, mp3_src_size);

 return offs1024;
}
