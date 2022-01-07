
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
typedef int UBYTE ;
struct TYPE_2__ {scalar_t__ blnk_time; } ;


 int BEG_UPDATE ;
 int CPU_Initialise () ;
 int Clocky_SS (int ) ;
 int Clocky_SSval ;
 int* Colours_table ;
 scalar_t__ F030 ;
 int FALSE ;
 int Getrez () ;
 unsigned long HOST_HEIGHT ;
 int HOST_PLANES ;
 int HOST_WIDTH ;
 int Keytbl (int,int,int) ;
 int Log_print (char*,...) ;
 int Logbase () ;
 int M_OFF ;
 scalar_t__ Milan ;
 scalar_t__ Mxalloc (unsigned long,int ) ;
 scalar_t__ NOVA_SSval ;
 int NOVA_double_size ;
 TYPE_1__* NOVA_xcb ;
 int Original_Log_base ;
 int Original_Phys_base ;
 int Physbase () ;
 int* RGBcoltable ;
 unsigned long Screen_HEIGHT ;
 int SetupEmulatedEnvironment () ;
 int Sound_Initialise (int*,char**) ;
 int Supexec (int ) ;
 int TRUE ;
 scalar_t__ TT030 ;
 scalar_t__ UNKNOWN ;
 int Util_sscandec (char*) ;
 int WF_WORKXYWH ;
 int appl_init () ;
 int bitplanes ;
 int** coltable ;
 int delta_screen ;
 int exit (int) ;
 int* f030coltable ;
 int force_videl ;
 int form_alert (int,char*) ;
 scalar_t__ get_cookie (char,...) ;
 int gl_vdi_handle ;
 int graf_handle (int*,int*,int*,int*) ;
 int graf_mouse (int ,int *) ;
 int joyswap ;
 int key_tab ;
 int * new_videoram ;
 scalar_t__ original_videl_settings ;
 int * p_str_p ;
 int reprogram_VIDEL ;
 int save_original_colors () ;
 int save_r ;
 unsigned long screenh ;
 int screenw ;
 int skip_N_frames ;
 scalar_t__ strcmp (char*,char*) ;
 int v_clrwk (int ) ;
 int v_opnvwk (int*,int *,int*) ;
 scalar_t__ video_hw ;
 int vq_extnd (int ,int,int*) ;
 unsigned long vramh ;
 int vramw ;
 int wind_get (int ,int ,int*,int*,int*,int*) ;
 int wind_update (int ) ;

int PLATFORM_Initialise(int *argc, char *argv[])
{
 int i;
 int j;

 int work_in[11], work_out[57];
 int maxx, maxy, maxw, maxh, wcell, hcell, wbox, hbox;
 int video_hardware;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-interlace") == 0) {
   if (i_a)
    skip_N_frames = Util_sscandec(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-joyswap") == 0)
   joyswap = TRUE;
  else if (strcmp(argv[i], "-videl") == 0)
   force_videl = TRUE;
  else if (strcmp(argv[i], "-double") == 0)
   NOVA_double_size = TRUE;
  else if (strcmp(argv[i], "-delta") == 0)
   delta_screen = TRUE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-interlace x  Generate Falcon screen only every X frame\n");
    Log_print("\t-joyswap      Exchange joysticks\n");
    Log_print("\t-videl        direct VIDEL programming (Falcon/VGA only)\n");
    Log_print("\t-delta        delta screen output (differences only)\n");
   }

   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }

 *argc = j;


 for (i = 0; i < 256; i++) {
  int r = (Colours_table[i] >> 18) & 0x3f;
  int g = (Colours_table[i] >> 10) & 0x3f;
  int b = (Colours_table[i] >> 2) & 0x3f;
  f030coltable[i] = (r << 26) | (g << 18) | (b << 2);
  RGBcoltable[i] = (r << 16) | (g << 8) | b;
  coltable[i][0] = r * 1000 / 64;
  coltable[i][1] = g * 1000 / 64;
  coltable[i][2] = b * 1000 / 64;
 }


 if (!get_cookie('_VDO', &video_hardware))
  video_hardware = 0;
 switch(video_hardware >> 16) {
  case 2:
   video_hw = TT030;
   break;
  case 3:
   video_hw = F030;
   break;
  case 4:
   video_hw = Milan;
   bitplanes = FALSE;
   break;
  default:
   video_hw = UNKNOWN;
   bitplanes = FALSE;
 }


 if (get_cookie('NOVA', &NOVA_xcb))
  bitplanes = FALSE;
 else if (get_cookie('fVDI', ((void*)0)))
  bitplanes = FALSE;


 appl_init();
 graf_mouse(M_OFF, ((void*)0));
 wind_get(0, WF_WORKXYWH, &maxx, &maxy, &maxw, &maxh);

 gl_vdi_handle = graf_handle(&wcell, &hcell, &wbox, &hbox);

 work_in[0] = Getrez() + 2;
 for(i = 1;i < 10;work_in[i++] = 1);
 work_in[10] = 2;
 v_opnvwk(work_in, &gl_vdi_handle, work_out);


 HOST_WIDTH = work_out[0] + 1;
 HOST_HEIGHT = work_out[1] + 1;

 vq_extnd(gl_vdi_handle, 1, work_out);
 HOST_PLANES = work_out[4];

 if (force_videl && video_hw == F030) {
  bitplanes = TRUE;


  p_str_p = (ULONG *) original_videl_settings;
  Supexec(save_r);

  if ((new_videoram = (UBYTE *)Mxalloc((336UL*Screen_HEIGHT), 0)) == ((void*)0)) {
   form_alert(1, "[1][Error allocating video memory ][ OK ]");
   exit(-1);
  }


  reprogram_VIDEL = 1;
  vramw = screenw = 336;
  vramh = screenh = Screen_HEIGHT;
 }
 else if (HOST_PLANES == 8 && HOST_WIDTH >= 320 && HOST_HEIGHT >= Screen_HEIGHT) {

  vramw = HOST_WIDTH;
  vramh = HOST_HEIGHT;






   screenw = 320;
  screenh = Screen_HEIGHT;
 }
 else {


  if (video_hw == F030)
   form_alert(1, "[1][Atari800 emulator needs 320x240|or higher res. in 256 colors.|Or use the -videl switch.][ OK ]");
  else
   form_alert(1, "[1][Atari800 emulator needs 320x240|or higher res. in 256 colors.][ OK ]");
  exit(-1);
 }


 v_clrwk(gl_vdi_handle);
 wind_update(BEG_UPDATE);

 save_original_colors();
 Original_Log_base = Logbase();
 Original_Phys_base = Physbase();

 key_tab = Keytbl(-1, -1, -1);



 CPU_Initialise();






 SetupEmulatedEnvironment();

 return TRUE;
}
