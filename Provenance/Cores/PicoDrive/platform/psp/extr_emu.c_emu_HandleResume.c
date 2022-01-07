
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* tracks; } ;
typedef TYPE_5__ cue_data_t ;
struct TYPE_12__ {int Status_CDC; } ;
struct TYPE_11__ {TYPE_2__* Tracks; } ;
struct TYPE_14__ {int* s68k_regs; TYPE_4__ scd; TYPE_3__ TOC; } ;
struct TYPE_10__ {int * F; } ;
struct TYPE_9__ {char* fname; } ;


 int PAHW_MCD ;
 int PicoAHW ;
 TYPE_8__* Pico_mcd ;
 int cdda_start_play () ;
 int cue_destroy (TYPE_5__*) ;
 TYPE_5__* cue_parse (char*) ;
 int lprintf (char*,char*) ;
 int mp3_reopen_file () ;
 int pm_close (int *) ;
 int * pm_open (char*) ;
 char* rom_fname_reload ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (char*) ;

void emu_HandleResume(void)
{
 if (!(PicoAHW & PAHW_MCD)) return;


 if (Pico_mcd->TOC.Tracks[0].F != ((void*)0))
 {
  char *fname = rom_fname_reload;
  int len = strlen(rom_fname_reload);
  cue_data_t *cue_data = ((void*)0);

  if (len > 4 && strcasecmp(fname + len - 4, ".cue") == 0)
  {
   cue_data = cue_parse(rom_fname_reload);
   if (cue_data != ((void*)0))
    fname = cue_data->tracks[1].fname;
  }

  lprintf("emu_HandleResume: reopen %s\n", fname);
  pm_close(Pico_mcd->TOC.Tracks[0].F);
  Pico_mcd->TOC.Tracks[0].F = pm_open(fname);
  lprintf("reopen %s\n", Pico_mcd->TOC.Tracks[0].F != ((void*)0) ? "ok" : "failed");

  if (cue_data != ((void*)0)) cue_destroy(cue_data);
 }

 mp3_reopen_file();

 if (!(Pico_mcd->s68k_regs[0x36] & 1) && (Pico_mcd->scd.Status_CDC & 1))
  cdda_start_play();
}
