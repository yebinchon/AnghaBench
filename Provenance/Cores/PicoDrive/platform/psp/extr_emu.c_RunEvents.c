
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int PBTN_CIRCLE ;
 int PBTN_X ;
 int POPT_ALT_RENDERER ;
 int PicoOpt ;
 int * PicoStateProgressCB ;
 int blit2 (char*,char*,int ) ;
 int clearArea (int ) ;
 TYPE_1__ currentConfig ;
 scalar_t__ emu_check_save_file (int) ;
 int * emu_msg_cb ;
 int emu_save_load_game (unsigned int,int ) ;
 int emu_status_msg (char*,...) ;
 int osd_text (int,char*,int,int ) ;
 int psp_msleep (int) ;
 int psp_pad_read (int) ;
 int reset_timing ;
 int sceGuSync (int ,int ) ;
 int state_slot ;
 int vidResetMode () ;

__attribute__((used)) static void RunEvents(unsigned int which)
{
 if (which & 0x1800)
 {
  int do_it = 1;

  if ( emu_check_save_file(state_slot) &&
    (( (which & 0x1000) && (currentConfig.EmuOpt & 0x800)) ||
     (!(which & 0x1000) && (currentConfig.EmuOpt & 0x200))) )
  {
   int keys;
   sceGuSync(0,0);
   blit2("", (which & 0x1000) ? "LOAD STATE? (X=yes, O=no)" : "OVERWRITE SAVE? (X=yes, O=no)", 0);
   while( !((keys = psp_pad_read(1)) & (PBTN_X|PBTN_CIRCLE)) )
    psp_msleep(50);
   if (keys & PBTN_CIRCLE) do_it = 0;
   while( ((keys = psp_pad_read(1)) & (PBTN_X|PBTN_CIRCLE)) )
    psp_msleep(50);
   clearArea(0);
  }

  if (do_it)
  {
   osd_text(4, (which & 0x1000) ? "LOADING GAME" : "SAVING GAME", 1, 0);
   PicoStateProgressCB = emu_msg_cb;
   emu_save_load_game((which & 0x1000) >> 12, 0);
   PicoStateProgressCB = ((void*)0);
   psp_msleep(0);
  }

  reset_timing = 1;
 }
 if (which & 0x0400)
 {
  if (PicoOpt&0x10) { PicoOpt&=~0x10; currentConfig.EmuOpt |= 0x80; }
  else { PicoOpt|= 0x10; currentConfig.EmuOpt &= ~0x80; }

  vidResetMode();

  if (PicoOpt & POPT_ALT_RENDERER)
   emu_status_msg("fast renderer");
  else if (currentConfig.EmuOpt&0x80)
   emu_status_msg("accurate renderer");
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
  emu_status_msg("SAVE SLOT %i [%s]", state_slot,
   emu_check_save_file(state_slot) ? "USED" : "FREE");
 }
}
