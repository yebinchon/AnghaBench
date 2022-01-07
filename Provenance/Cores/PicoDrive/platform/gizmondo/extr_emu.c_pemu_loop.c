
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dirtyPal; int pal; int frame_count; } ;
struct TYPE_6__ {int* reg; } ;
struct TYPE_10__ {TYPE_2__ m; TYPE_1__ video; } ;
struct TYPE_9__ {scalar_t__ changed; } ;
struct TYPE_8__ {int EmuOpt; int Frameskip; int volume; scalar_t__ scaling; } ;
typedef scalar_t__ DWORD ;


 int Framework2D_WaitVSync () ;
 int * FrameworkAudio_56448Buffer () ;
 int FrameworkAudio_BufferPos () ;
 int FrameworkAudio_Close () ;
 int FrameworkAudio_Init (int,int,int) ;
 int FrameworkAudio_SetVolume (int ,int ) ;
 scalar_t__ GetTickCount () ;
 int PAHW_MCD ;
 scalar_t__ PGS_Running ;
 TYPE_5__ Pico ;
 int PicoAHW ;
 int PicoCDBufferFree () ;
 int PicoCDBufferInit () ;
 int PicoFrame () ;
 int PicoOpt ;
 int PicoWriteSound ;
 int PsndLen ;
 int * PsndOut ;
 int PsndRate ;
 int PsndRerate (int) ;
 TYPE_4__ SRam ;
 int SkipFrame () ;
 int blit (char*,char*) ;
 int clearArea (int) ;
 TYPE_3__ currentConfig ;
 int emu_save_load_game (int ,int) ;
 int emu_stateCb (char*) ;
 scalar_t__ engineState ;
 int fb_flip () ;
 int * fb_lock (int) ;
 int fb_unlock () ;
 int * giz_screen ;
 int lprintf (char*,...) ;
 char* noticeMsg ;
 scalar_t__ noticeMsgTime ;
 int reset_timing ;
 int simpleWait (scalar_t__) ;
 int snd_all_samples ;
 int snd_cbuf_samples ;
 int * snd_cbuff ;
 int sprintf (char*,char*,int,...) ;
 int updateKeys () ;
 int updateSound ;
 int vidResetMode () ;

void pemu_loop(void)
{
 static int PsndRate_old = 0, PicoOpt_old = 0, pal_old = 0;
 char fpsbuff[24];
 DWORD tval, tval_prev = 0, tval_thissec = 0;
 int frames_done = 0, frames_shown = 0, oldmodes = 0, sec_ms = 1000;
 int target_fps, target_frametime, lim_time, tval_diff, i;
 char *notice = ((void*)0);

 lprintf("entered emu_Loop()\n");

 fpsbuff[0] = 0;


 vidResetMode();
 if (currentConfig.scaling) PicoOpt|=0x4000;
 else PicoOpt&=~0x4000;
 Pico.m.dirtyPal = 1;
 oldmodes = ((Pico.video.reg[12]&1)<<2) ^ 0xc;


 target_fps = Pico.m.pal ? 50 : 60;
 target_frametime = Pico.m.pal ? (1000<<8)/50 : (1000<<8)/60+1;
 reset_timing = 1;


 if (PicoAHW & PAHW_MCD) PicoCDBufferInit();


 PsndOut = ((void*)0);
 if (currentConfig.EmuOpt & 4)
 {
  int ret, snd_excess_add, stereo;
  if (PsndRate != PsndRate_old || (PicoOpt&0x0b) != (PicoOpt_old&0x0b) || Pico.m.pal != pal_old) {
   PsndRerate(Pico.m.frame_count ? 1 : 0);
  }
  stereo=(PicoOpt&8)>>3;
  snd_excess_add = ((PsndRate - PsndLen*target_fps)<<16) / target_fps;
  snd_cbuf_samples = (PsndRate<<stereo) * 16 / target_fps;
  lprintf("starting audio: %i len: %i (ex: %04x) stereo: %i, pal: %i\n",
   PsndRate, PsndLen, snd_excess_add, stereo, Pico.m.pal);
  ret = FrameworkAudio_Init(PsndRate, snd_cbuf_samples, stereo);
  if (ret != 0) {
   lprintf("FrameworkAudio_Init() failed: %i\n", ret);
   sprintf(noticeMsg, "sound init failed (%i), snd disabled", ret);
   noticeMsgTime = GetTickCount();
   currentConfig.EmuOpt &= ~4;
  } else {
   FrameworkAudio_SetVolume(currentConfig.volume, currentConfig.volume);
   PicoWriteSound = updateSound;
   snd_cbuff = FrameworkAudio_56448Buffer();
   PsndOut = snd_cbuff + snd_cbuf_samples / 2;
   snd_all_samples = 0;
   PsndRate_old = PsndRate;
   PicoOpt_old = PicoOpt;
   pal_old = Pico.m.pal;
  }
 }


 while (engineState == PGS_Running)
 {
  int modes;

  tval = GetTickCount();
  if (reset_timing || tval < tval_prev) {

   reset_timing = 0;
   tval_thissec = tval;
   frames_shown = frames_done = 0;
  }


  if (noticeMsgTime) {
   static int noticeMsgSum;
   if (tval - noticeMsgTime > 2000) {
    noticeMsgTime = 0;
    clearArea(0);
    notice = 0;
   } else {
    int sum = noticeMsg[0]+noticeMsg[1]+noticeMsg[2];
    if (sum != noticeMsgSum) { clearArea(0); noticeMsgSum = sum; }
    notice = noticeMsg;
   }
  }


  modes = ((Pico.video.reg[12]&1)<<2)|(Pico.video.reg[1]&8);
  if (modes != oldmodes) {
   oldmodes = modes;
   clearArea(1);
  }


  if (tval - tval_thissec >= sec_ms)
  {
   if(currentConfig.EmuOpt & 2)
    sprintf(fpsbuff, "%02i/%02i", frames_shown, frames_done);


   tval_thissec += sec_ms;

   if (PsndOut != ((void*)0))
   {

    static int audio_skew_prev = 0;
    int audio_skew, adj, co = 9, shift = 7;
    audio_skew = snd_all_samples*2 - FrameworkAudio_BufferPos();
    if (PsndRate == 22050) co = 10;
    if (PsndRate > 22050) co = 11;
    if (PicoOpt&8) shift++;
    if (audio_skew < 0) {
     adj = -((-audio_skew) >> shift);
     if (audio_skew > -(6<<co)) adj>>=1;
     if (audio_skew > -(4<<co)) adj>>=1;
     if (audio_skew > -(2<<co)) adj>>=1;
     if (audio_skew > audio_skew_prev) adj>>=2;
    } else {
     adj = audio_skew >> shift;
     if (audio_skew < (6<<co)) adj>>=1;
     if (audio_skew < (4<<co)) adj>>=1;
     if (audio_skew < (2<<co)) adj>>=1;
     if (audio_skew < audio_skew_prev) adj>>=2;
    }
    audio_skew_prev = audio_skew;
    target_frametime += adj;
    sec_ms = (target_frametime * target_fps) >> 8;

    frames_done = frames_shown = 0;
   }
   else if (currentConfig.Frameskip < 0) {
    frames_done -= target_fps; if (frames_done < 0) frames_done = 0;
    frames_shown -= target_fps; if (frames_shown < 0) frames_shown = 0;
    if (frames_shown > frames_done) frames_shown = frames_done;
   } else {
    frames_done = frames_shown = 0;
   }
  }




  tval_prev = tval;
  lim_time = (frames_done+1) * target_frametime;
  if (currentConfig.Frameskip >= 0)
  {
   for (i = 0; i < currentConfig.Frameskip; i++) {
    updateKeys();
    SkipFrame(); frames_done++;
    if (PsndOut) {
     int tval_diff;
     tval = GetTickCount();
     tval_diff = (int)(tval - tval_thissec) << 8;
     if (tval_diff < lim_time)
      simpleWait(tval + ((lim_time - tval_diff)>>8));
    }
    lim_time += target_frametime;
   }
  }
  else
  {
   int tval_diff;
   tval = GetTickCount();
   tval_diff = (int)(tval - tval_thissec) << 8;
   if (tval_diff > lim_time)
   {

    if (tval_diff - lim_time >= (300<<8)) {


     reset_timing = 1;
     continue;
    }
    updateKeys();
    SkipFrame(); frames_done++;
    continue;
   }
  }

  updateKeys();

  if (currentConfig.EmuOpt&0x80)

   giz_screen = fb_lock((currentConfig.EmuOpt&0x8000) ? 0 : 1);

  PicoFrame();

  if (giz_screen == ((void*)0))
   giz_screen = fb_lock((currentConfig.EmuOpt&0x8000) ? 0 : 1);

  blit(fpsbuff, notice);

  if (giz_screen != ((void*)0)) {
   fb_unlock();
   giz_screen = ((void*)0);
  }

  if (currentConfig.EmuOpt&0x2000)
   Framework2D_WaitVSync();

  if (currentConfig.EmuOpt&0x8000)
   fb_flip();


  tval = GetTickCount();
  tval_diff = (int)(tval - tval_thissec) << 8;

  if (currentConfig.Frameskip < 0 && tval_diff - lim_time >= (300<<8))
   reset_timing = 1;
  else if (PsndOut != ((void*)0) || currentConfig.Frameskip < 0)
  {

   if (tval_diff < lim_time)
   {

    simpleWait(tval + ((lim_time - tval_diff) >> 8));
   }
  }

  frames_done++; frames_shown++;
 }


 if (PicoAHW & PAHW_MCD) PicoCDBufferFree();

 if (PsndOut != ((void*)0)) {
  PsndOut = snd_cbuff = ((void*)0);
  FrameworkAudio_Close();
 }


 if ((currentConfig.EmuOpt & 1) && SRam.changed) {
  emu_stateCb("Writing SRAM/BRAM..");
  emu_save_load_game(0, 1);
  SRam.changed = 0;
 }
}
