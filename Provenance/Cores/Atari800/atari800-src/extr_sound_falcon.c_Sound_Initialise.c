
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int Log_print (char*,...) ;
 int MFP_IRQ_on ;
 scalar_t__ Mxalloc (int,int ) ;
 int POKEYSND_FREQ_17_EXACT ;
 int POKEYSND_Init (int ,scalar_t__,int,int ) ;
 scalar_t__ RATE12KHZ ;
 scalar_t__ RATE25KHZ ;
 scalar_t__ RATE50KHZ ;
 int SNDBUFSIZE ;
 int Supexec (int ) ;
 int TRUE ;
 scalar_t__ Util_sscandec (char*) ;
 char* dsp_buffer1 ;
 char* dsp_buffer2 ;
 char* dsp_endbuf1 ;
 char* dsp_endbuf2 ;
 scalar_t__ dsprate ;
 int exit (int) ;
 scalar_t__ get_cookie (char,long*) ;
 int memset (char*,int,int) ;
 int printf (char*) ;
 int sndbufsize ;
 int sound_enabled ;
 scalar_t__ strcmp (char*,char*) ;

int Sound_Initialise(int *argc, char *argv[])
{
 int i, j;
 int help_only = FALSE;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-sound") == 0)
   sound_enabled = TRUE;
  else if (strcmp(argv[i], "-nosound") == 0)
   sound_enabled = FALSE;
  else if (strcmp(argv[i], "-dsprate") == 0) {
   if (i_a) {
    dsprate = Util_sscandec(argv[++i]);
    if (dsprate == RATE50KHZ)
     sndbufsize = 4*SNDBUFSIZE;
    else if (dsprate == RATE25KHZ)
     sndbufsize = 2*SNDBUFSIZE;
    else {
     dsprate = RATE12KHZ;
     sndbufsize = SNDBUFSIZE;
    }
   }
   else a_m = TRUE;
  }
  else {
   if (strcmp(argv[i], "-help") == 0) {
    help_only = TRUE;
    Log_print("\t-sound           Enable sound\n"
           "\t-nosound         Disable sound\n"
           "\t-dsprate <rate>  Set sample rate in Hz"
          );
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   sound_enabled = FALSE;
   return FALSE;
  }
 }

 *argc = j;

 if (help_only) {
  sound_enabled = FALSE;
  return TRUE;
 }


 if (sound_enabled) {
  long val;

  if (get_cookie('_SND', &val)) {
   if (!(val & 2))
    sound_enabled = FALSE;
  }
  else
   sound_enabled = FALSE;
 }

 if (sound_enabled) {
  dsp_buffer1 = (char *) Mxalloc(2 * sndbufsize, 0);
  if (!dsp_buffer1) {
   printf("can't allocate sound buffer\n");
   exit(1);
  }
  dsp_buffer2 = dsp_endbuf1 = dsp_buffer1 + sndbufsize;
  dsp_endbuf2 = dsp_buffer2 + sndbufsize;
  memset(dsp_buffer1, 0, sndbufsize);
  memset(dsp_buffer2, 127, sndbufsize);




  POKEYSND_Init(POKEYSND_FREQ_17_EXACT, dsprate, 1, 0);

  Supexec(MFP_IRQ_on);
 }
 return TRUE;
}
