
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int FrameworkAudio_SetPause (int) ;
 int Framework_PollGetButtons () ;
 int GetTickCount () ;
 int PBTN_PLAY ;
 int PBTN_STOP ;
 int PicoOpt ;
 int * PicoStateProgressCB ;
 int * PsndOut ;
 int Sleep (int) ;
 int blit (char*,char*) ;
 int clearArea (int ) ;
 TYPE_1__ currentConfig ;
 scalar_t__ emu_check_save_file (int) ;
 int emu_save_load_game (unsigned int,int ) ;
 int * emu_stateCb ;
 int * fb_lock (int) ;
 int * giz_screen ;
 int noticeMsg ;
 int noticeMsgTime ;
 int osd_text (int,int,char*) ;
 int reset_timing ;
 int sprintf (int ,char*,int,char*) ;
 int state_slot ;
 int strcpy (int ,char*) ;
 int vidResetMode () ;

__attribute__((used)) static void RunEvents(unsigned int which)
{
 if (which & 0x1800)
 {
  int do_it = 1;

  if (PsndOut != ((void*)0))
   FrameworkAudio_SetPause(1);
  if (giz_screen == ((void*)0))
   giz_screen = fb_lock(1);
  if ( emu_check_save_file(state_slot) &&
    (( (which & 0x1000) && (currentConfig.EmuOpt & 0x800)) ||
     (!(which & 0x1000) && (currentConfig.EmuOpt & 0x200))) )
  {
   int keys;
   blit("", (which & 0x1000) ? "LOAD STATE? (PLAY=yes, STOP=no)" : "OVERWRITE SAVE? (PLAY=yes, STOP=no)");
   while( !((keys = Framework_PollGetButtons()) & (PBTN_PLAY|PBTN_STOP)) )
    Sleep(50);
   if (keys & PBTN_STOP) do_it = 0;
   while( ((keys = Framework_PollGetButtons()) & (PBTN_PLAY|PBTN_STOP)) )
    Sleep(50);
   clearArea(0);
  }

  if (do_it)
  {
   osd_text(4, 232, (which & 0x1000) ? "LOADING GAME" : "SAVING GAME");
   PicoStateProgressCB = emu_stateCb;
   emu_save_load_game((which & 0x1000) >> 12, 0);
   PicoStateProgressCB = ((void*)0);
   Sleep(0);
  }

  if (PsndOut != ((void*)0))
   FrameworkAudio_SetPause(0);
  reset_timing = 1;
 }
 if (which & 0x0400)
 {
  if (PicoOpt&0x10) { PicoOpt&=~0x10; currentConfig.EmuOpt |= 0x80; }
  else { PicoOpt|= 0x10; currentConfig.EmuOpt &= ~0x80; }

  vidResetMode();

  if (PicoOpt&0x10) {
   strcpy(noticeMsg, " 8bit fast renderer");
  } else if (currentConfig.EmuOpt&0x80) {
   strcpy(noticeMsg, "16bit accurate renderer");
  } else {
   strcpy(noticeMsg, " 8bit accurate renderer");
  }

  noticeMsgTime = GetTickCount();
 }
 if (which & 0x0300)
 {
  if(which&0x0200) {
   state_slot -= 1;
   if(state_slot < 0) state_slot = 9;
  } else {
   state_slot += 1;
   if(state_slot > 9) state_slot = 0;
  }
  sprintf(noticeMsg, "SAVE SLOT %i [%s]", state_slot, emu_check_save_file(state_slot) ? "USED" : "FREE");
  noticeMsgTime = GetTickCount();
 }
}
