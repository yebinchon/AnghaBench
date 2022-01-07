
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int frame_count; scalar_t__ pal; } ;
struct TYPE_8__ {TYPE_1__ m; } ;
struct TYPE_7__ {scalar_t__ changed; } ;
struct TYPE_6__ {int EmuOpt; int Frameskip; } ;


 int EOPT_EN_SRAM ;
 int EOPT_EXT_FRMLIMIT ;
 int EOPT_NO_FRMLIMIT ;
 int EOPT_SHOW_FPS ;
 int EOPT_VSYNC ;
 scalar_t__ PGS_Running ;
 TYPE_4__ Pico ;
 int PicoFrame () ;
 int PicoLoopPrepare () ;
 int PicoSkipFrame ;
 TYPE_3__ SRam ;
 int STATUS_MSG_TIMEOUT ;
 TYPE_2__ currentConfig ;
 int emu_loop_prep () ;
 int emu_save_load_game (int ,int) ;
 int emu_set_fastforward (int ) ;
 int emu_sound_stop () ;
 int emu_update_input () ;
 scalar_t__ engineState ;
 scalar_t__ flip_after_sync ;
 int get_ticks () ;
 int main ;
 int ms_to_ticks (int) ;
 int* noticeMsg ;
 int notice_msg_time ;
 int pemu_finalize_frame (char*,char*) ;
 int pemu_loop_end () ;
 int pemu_sound_start () ;
 int plat_status_msg_busy_first (char*) ;
 int plat_status_msg_clear () ;
 int plat_video_flip () ;
 int plat_video_loop_prepare () ;
 int plat_video_wait_vsync () ;
 int plat_wait_till_us (unsigned int) ;
 int pprof_end (int ) ;
 int pprof_start (int ) ;
 int printf (char*,char*) ;
 int reset_timing ;
 int sprintf (char*,char*,int,...) ;

void emu_loop(void)
{
 int frames_done, frames_shown;
 int target_frametime_x3;
 unsigned int timestamp_x3 = 0;
 unsigned int timestamp_aim_x3 = 0;
 unsigned int timestamp_fps_x3 = 0;
 char *notice_msg = ((void*)0);
 char fpsbuff[24];
 int fskip_cnt = 0;

 fpsbuff[0] = 0;

 PicoLoopPrepare();

 plat_video_loop_prepare();
 emu_loop_prep();
 pemu_sound_start();


 if (Pico.m.pal)
  target_frametime_x3 = 3 * ms_to_ticks(1000) / 50;
 else
  target_frametime_x3 = 3 * ms_to_ticks(1000) / 60;

 reset_timing = 1;
 frames_done = frames_shown = 0;


 while (engineState == PGS_Running)
 {
  int skip = 0;
  int diff;

  pprof_start(main);

  if (reset_timing) {
   reset_timing = 0;
   plat_video_wait_vsync();
   timestamp_aim_x3 = get_ticks() * 3;
   timestamp_fps_x3 = timestamp_aim_x3;
   fskip_cnt = 0;
  }
  else if (currentConfig.EmuOpt & EOPT_NO_FRMLIMIT) {
   timestamp_aim_x3 = get_ticks() * 3;
  }

  timestamp_x3 = get_ticks() * 3;


  if (notice_msg_time != 0)
  {
   static int noticeMsgSum;
   if (timestamp_x3 - ms_to_ticks(notice_msg_time) * 3
        > ms_to_ticks(STATUS_MSG_TIMEOUT) * 3)
   {
    notice_msg_time = 0;
    plat_status_msg_clear();
    plat_video_flip();
    plat_status_msg_clear();
    notice_msg = ((void*)0);
   }
   else {
    int sum = noticeMsg[0] + noticeMsg[1] + noticeMsg[2];
    if (sum != noticeMsgSum) {
     plat_status_msg_clear();
     noticeMsgSum = sum;
    }
    notice_msg = noticeMsg;
   }
  }


  if (timestamp_x3 - timestamp_fps_x3 >= ms_to_ticks(1000) * 3)
  {
   if (currentConfig.EmuOpt & EOPT_SHOW_FPS)
    sprintf(fpsbuff, "%02i/%02i  ", frames_shown, frames_done);

   frames_shown = frames_done = 0;
   timestamp_fps_x3 += ms_to_ticks(1000) * 3;
  }




  diff = timestamp_aim_x3 - timestamp_x3;

  if (currentConfig.Frameskip >= 0)
  {
   if (fskip_cnt < currentConfig.Frameskip) {
    fskip_cnt++;
    skip = 1;
   }
   else {
    fskip_cnt = 0;
   }
  }
  else if (diff < -target_frametime_x3)
  {


   if (frames_done / 8 <= frames_shown)
    skip = 1;
  }


  while (diff < -target_frametime_x3 * 3) {
   timestamp_aim_x3 += target_frametime_x3;
   diff = timestamp_aim_x3 - timestamp_x3;
  }

  emu_update_input();
  if (skip) {
   int do_audio = diff > -target_frametime_x3 * 2;
   PicoSkipFrame = do_audio ? 1 : 2;
   PicoFrame();
   PicoSkipFrame = 0;
  }
  else {
   PicoFrame();
   pemu_finalize_frame(fpsbuff, notice_msg);
   frames_shown++;
  }
  frames_done++;
  timestamp_aim_x3 += target_frametime_x3;

  if (!skip && !flip_after_sync)
   plat_video_flip();


  if (!skip && !reset_timing
      && !(currentConfig.EmuOpt & (EOPT_NO_FRMLIMIT|EOPT_EXT_FRMLIMIT)))
  {
   unsigned int timestamp = get_ticks();
   diff = timestamp_aim_x3 - timestamp * 3;


   if (diff > target_frametime_x3 && (currentConfig.EmuOpt & EOPT_VSYNC)) {

    plat_video_wait_vsync();
    timestamp = get_ticks();
    diff = timestamp * 3 - timestamp_aim_x3;
   }
   if (diff > target_frametime_x3) {

    plat_wait_till_us(timestamp + (diff - target_frametime_x3) / 3);
   }
  }

  if (!skip && flip_after_sync)
   plat_video_flip();

  pprof_end(main);
 }

 emu_set_fastforward(0);


 if ((currentConfig.EmuOpt & EOPT_EN_SRAM) && SRam.changed) {
  plat_status_msg_busy_first("Writing SRAM/BRAM...");
  emu_save_load_game(0, 1);
  SRam.changed = 0;
 }

 pemu_loop_end();
 emu_sound_stop();
}
