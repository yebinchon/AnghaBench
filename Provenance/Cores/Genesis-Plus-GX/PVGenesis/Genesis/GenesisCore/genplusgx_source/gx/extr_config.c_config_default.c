
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_10__ {int psg_preamp; int fm_preamp; int hq_fm; int psgBoostNoise; int filter; int lp_range; int low_freq; int high_freq; double lg; double mg; double hg; int dac_bits; int ym2413; int addr_error; int aspect; int overscan; int vsync; int bilinear; int vfilter; int render; int tv_mode; double gamma; int* gun_cursor; int s_auto; int v_prog; int s_default; int screen_w; double bgm_volume; double sfx_volume; TYPE_1__* input; int ** lastdir; scalar_t__ bg_overlay; scalar_t__ l_device; scalar_t__ s_device; scalar_t__ autocheat; scalar_t__ autoload; scalar_t__ cd_leds; scalar_t__ invert_mouse; scalar_t__ trap; scalar_t__ ntsc; scalar_t__ gg_extra; scalar_t__ yscale; scalar_t__ xscale; scalar_t__ yshift; scalar_t__ xshift; scalar_t__ hot_swap; scalar_t__ lock_on; scalar_t__ bios; scalar_t__ force_dtack; scalar_t__ master_clock; scalar_t__ vdp_mode; scalar_t__ region_detect; scalar_t__ system; scalar_t__ mono; int version; } ;
struct TYPE_9__ {void** system; } ;
struct TYPE_8__ {int viTVMode; } ;
struct TYPE_7__ {int device; } ;


 int ASND_GetFirstUnusedVoice () ;
 int ASND_Pause (int) ;
 int ASND_SetVoice (int,int ,int,int ,int *,int ,int,int,int *) ;
 int CONFIG_VERSION ;
 char* DEFAULT_PATH ;
 int GUI_WaitPrompt (char*,char*) ;
 void* NO_SYSTEM ;
 int PAD_BUTTON_B ;
 int PAD_ButtonsHeld (int ) ;
 int PAD_ScanPads () ;
 void* SYSTEM_MD_GAMEPAD ;
 TYPE_2__ TVNtsc480Prog ;
 size_t TYPE_DVD ;
 size_t TYPE_SD ;
 size_t TYPE_USB ;
 int VIDEO_Configure (TYPE_2__*) ;
 int VIDEO_Flush () ;
 scalar_t__ VIDEO_HaveComponentCable () ;
 int VIDEO_WaitVSync () ;

 double VI_GM_1_0 ;

 int VOICE_MONO_16BIT ;
 TYPE_4__ config ;
 int config_load () ;
 int gx_input_SetDefault () ;
 TYPE_3__ input ;
 int input_init () ;
 scalar_t__ intro_pcm ;
 int intro_pcm_size ;
 int sleep (int) ;
 int sprintf (int ,char*,char*) ;
 int strncpy (int ,int ,int) ;
 TYPE_2__* vmode ;

void config_default(void)
{

  strncpy(config.version,CONFIG_VERSION,16);


  config.psg_preamp = 150;
  config.fm_preamp = 100;
  config.hq_fm = 1;
  config.psgBoostNoise = 1;
  config.filter = 1;
  config.lp_range = 0x9999;
  config.low_freq = 880;
  config.high_freq = 5000;
  config.lg = 1.0;
  config.mg = 1.0;
  config.hg = 1.0;
  config.dac_bits = 14;
  config.ym2413 = 2;
  config.mono = 0;


  config.system = 0;
  config.region_detect = 0;
  config.vdp_mode = 0;
  config.master_clock = 0;
  config.force_dtack = 0;
  config.addr_error = 1;
  config.bios = 0;
  config.lock_on = 0;
  config.hot_swap = 0;


  config.xshift = 0;
  config.yshift = 0;
  config.xscale = 0;
  config.yscale = 0;
  config.aspect = 1;
  config.overscan = 3;
  config.gg_extra = 0;
  config.ntsc = 0;
  config.vsync = 1;
  config.bilinear = 1;
  config.vfilter = 1;

  if (VIDEO_HaveComponentCable())
  {
    config.render = 2;
  }
  else
  {
    config.render = 0;
  }

  switch (vmode->viTVMode >> 2)
  {
    case 128:
      config.tv_mode = 1;
      break;

    case 129:
      config.tv_mode = 2;
      break;

    default:
      config.tv_mode = 0;
      break;
  }







  config.gun_cursor[0] = 1;
  config.gun_cursor[1] = 1;
  config.invert_mouse = 0;


  config.cd_leds = 0;


  config.autoload = 0;
  config.autocheat = 0;



  config.s_auto = 0;
  config.v_prog = 1;

  config.s_default = 1;
  config.s_device = 0;
  config.l_device = 0;
  config.bg_overlay = 0;
  config.screen_w = 658;
  config.bgm_volume = 100.0;
  config.sfx_volume = 100.0;
  sprintf (config.lastdir[0][TYPE_SD], "%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[1][TYPE_SD], "%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[2][TYPE_SD], "%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[3][TYPE_SD], "%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[4][TYPE_SD], "%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[0][TYPE_DVD], "dvd:%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[1][TYPE_DVD], "dvd:%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[2][TYPE_DVD], "dvd:%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[3][TYPE_DVD], "dvd:%s/roms/", DEFAULT_PATH);
  sprintf (config.lastdir[4][TYPE_DVD], "dvd:%s/roms/", DEFAULT_PATH);



  int loaded = config_load();



  PAD_ScanPads();
  if (PAD_ButtonsHeld(0) & PAD_BUTTON_B)
  {

    config.v_prog ^= 1;
    ASND_Pause(0);
    int voice = ASND_GetFirstUnusedVoice();
    ASND_SetVoice(voice,VOICE_MONO_16BIT,44100,0,(u8 *)intro_pcm,intro_pcm_size,200,200,((void*)0));
    sleep (2);
    ASND_Pause(1);
  }


  if (VIDEO_HaveComponentCable() && config.v_prog)
  {
    vmode = &TVNtsc480Prog;
    VIDEO_Configure (vmode);
    VIDEO_Flush();
    VIDEO_WaitVSync();
    VIDEO_WaitVSync();
  }



  if (!loaded)
  {
    GUI_WaitPrompt("Warning","Default Settings restored");
    gx_input_SetDefault();
  }


  input.system[0] = SYSTEM_MD_GAMEPAD;
  input.system[1] = (config.input[1].device != -1) ? SYSTEM_MD_GAMEPAD : NO_SYSTEM;
  input_init();
}
