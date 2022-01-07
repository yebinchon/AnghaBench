
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CONFIGURABLE_KEYS ;
 scalar_t__ PAHW_PICO ;
 unsigned int PBTN_SELECT ;
 int PGS_Menu ;
 unsigned int PSP_CTRL_HOME ;
 scalar_t__ PicoAHW ;
 unsigned int* PicoPad ;
 int RunEvents (unsigned int) ;
 int RunEventsPico (unsigned int,unsigned int) ;
 int emu_DoTurbo (unsigned int*,unsigned int) ;
 int emu_set_fastforward (unsigned int) ;
 int emu_updateMovie () ;
 int engineState ;
 scalar_t__ movie_data ;
 unsigned int psp_pad_read (int ) ;
 int reset_timing ;
 int sceDisplayWaitVblankStart () ;

__attribute__((used)) static void updateKeys(void)
{
 unsigned int keys, allActions[2] = { 0, 0 }, events;
 static unsigned int prevEvents = 0;
 int i;


 keys = psp_pad_read(0);
 if (keys & PSP_CTRL_HOME)
  sceDisplayWaitVblankStart();

 if (keys & PBTN_SELECT)
  engineState = PGS_Menu;

 keys &= CONFIGURABLE_KEYS;

 PicoPad[0] = allActions[0] & 0xfff;
 PicoPad[1] = allActions[1] & 0xfff;

 if (allActions[0] & 0x7000) emu_DoTurbo(&PicoPad[0], allActions[0]);
 if (allActions[1] & 0x7000) emu_DoTurbo(&PicoPad[1], allActions[1]);

 events = (allActions[0] | allActions[1]) >> 16;

 if ((events ^ prevEvents) & 0x40) {
  emu_set_fastforward(events & 0x40);
  reset_timing = 1;
 }

 events &= ~prevEvents;

 if (PicoAHW == PAHW_PICO)
  RunEventsPico(events, keys);
 if (events) RunEvents(events);
 if (movie_data) emu_updateMovie();

 prevEvents = (allActions[0] | allActions[1]) >> 16;
}
