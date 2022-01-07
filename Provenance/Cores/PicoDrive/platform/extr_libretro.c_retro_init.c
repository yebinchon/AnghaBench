
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PDF_RGB555 ;
 int PICO_INPUT_PAD_6BTN ;
 int POPT_ACC_SPRITES ;
 int POPT_DIS_32C_BORDER ;
 int POPT_EN_32X ;
 int POPT_EN_DRC ;
 int POPT_EN_FM ;
 int POPT_EN_MCD_CDDA ;
 int POPT_EN_MCD_GFX ;
 int POPT_EN_MCD_PCM ;
 int POPT_EN_PSG ;
 int POPT_EN_PWM ;
 int POPT_EN_STEREO ;
 int POPT_EN_Z80 ;
 int PicoAutoRgnOrder ;
 int PicoDrawSetOutBuf (int ,int) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 int PicoInit () ;
 int PicoMCDcloseTray ;
 int PicoMCDopenTray ;
 int PicoOpt ;
 int PicoSetInputDevice (int,int ) ;
 int PsndRate ;
 int RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE ;
 int RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL ;
 int VOUT_MAX_HEIGHT ;
 int VOUT_MAX_WIDTH ;
 int disk_control ;
 int disk_tray_close ;
 int disk_tray_open ;
 int * emu_log ;
 int environ_cb (int ,int*) ;
 int * fopen (char*,char*) ;
 int malloc (int) ;
 int * stdout ;
 int vout_buf ;
 int vout_height ;
 int vout_width ;

void retro_init(void)
{
 int level;







 emu_log = stdout;

 level = 0;
 environ_cb(RETRO_ENVIRONMENT_SET_PERFORMANCE_LEVEL, &level);

 environ_cb(RETRO_ENVIRONMENT_SET_DISK_CONTROL_INTERFACE, &disk_control);

 PicoOpt = POPT_EN_STEREO|POPT_EN_FM|POPT_EN_PSG|POPT_EN_Z80
  | POPT_EN_MCD_PCM|POPT_EN_MCD_CDDA|POPT_EN_MCD_GFX
  | POPT_EN_32X|POPT_EN_PWM
  | POPT_ACC_SPRITES|POPT_DIS_32C_BORDER;



 PsndRate = 44100;
 PicoAutoRgnOrder = 0x184;

 vout_width = 320;
 vout_height = 240;
 vout_buf = malloc(VOUT_MAX_WIDTH * VOUT_MAX_HEIGHT * 2);

 PicoInit();
 PicoDrawSetOutFormat(PDF_RGB555, 0);
 PicoDrawSetOutBuf(vout_buf, vout_width * 2);


 PicoMCDopenTray = disk_tray_open;
 PicoMCDcloseTray = disk_tray_close;


    PicoSetInputDevice(0, PICO_INPUT_PAD_6BTN);
    PicoSetInputDevice(1, PICO_INPUT_PAD_6BTN);
}
