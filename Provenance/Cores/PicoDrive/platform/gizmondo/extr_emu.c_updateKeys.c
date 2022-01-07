
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume; } ;


 unsigned int CONFIGURABLE_KEYS ;
 int FrameworkAudio_SetVolume (int,int) ;
 unsigned int Framework_PollGetButtons () ;
 int GetTickCount () ;
 unsigned int PBTN_HOME ;
 int PGS_Menu ;
 unsigned int* PicoPad ;
 int * PsndOut ;
 int RunEvents (unsigned int) ;
 TYPE_1__ currentConfig ;
 int emu_DoTurbo (unsigned int*,unsigned int) ;
 int emu_updateMovie () ;
 int engineState ;
 scalar_t__ movie_data ;
 int noticeMsg ;
 int noticeMsgTime ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void updateKeys(void)
{
 unsigned int keys, allActions[2] = { 0, 0 }, events;
 static unsigned int prevEvents = 0;
 int i;


 keys = Framework_PollGetButtons();
 if (keys & PBTN_HOME)
  engineState = PGS_Menu;

 keys &= CONFIGURABLE_KEYS;

 PicoPad[0] = allActions[0] & 0xfff;
 PicoPad[1] = allActions[1] & 0xfff;

 if (allActions[0] & 0x7000) emu_DoTurbo(&PicoPad[0], allActions[0]);
 if (allActions[1] & 0x7000) emu_DoTurbo(&PicoPad[1], allActions[1]);

 events = (allActions[0] | allActions[1]) >> 16;


 if ((events & 0x6000) && PsndOut != ((void*)0))
 {
  int vol = currentConfig.volume;
  if (events & 0x2000) {
   if (vol < 100) vol++;
  } else {
   if (vol > 0) vol--;
  }
  FrameworkAudio_SetVolume(vol, vol);
  sprintf(noticeMsg, "VOL: %02i ", vol);
  noticeMsgTime = GetTickCount();
  currentConfig.volume = vol;
 }

 events &= ~prevEvents;
 if (events) RunEvents(events);
 if (movie_data) emu_updateMovie();

 prevEvents = (allActions[0] | allActions[1]) >> 16;
}
