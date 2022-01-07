
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* filename; int loaded; int adjust; } ;
struct TYPE_4__ {void* color_delay; void* hue; void* gamma; void* brightness; void* contrast; void* saturation; } ;


 int COLOURS_EXTERNAL_Read (TYPE_2__*) ;
 TYPE_2__ COLOURS_NTSC_external ;
 TYPE_1__ COLOURS_NTSC_setup ;
 int FALSE ;
 int Log_print (char*,...) ;
 int TRUE ;
 int Util_strlcpy (char*,char*,int) ;
 void* atof (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int COLOURS_NTSC_Initialise(int *argc, char *argv[])
{
 int i;
 int j;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-ntsc-saturation") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.saturation = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-ntsc-contrast") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.contrast = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-ntsc-brightness") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.brightness = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-ntsc-gamma") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.gamma = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-ntsc-tint") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.hue = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-ntsc-colordelay") == 0) {
   if (i_a)
    COLOURS_NTSC_setup.color_delay = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-paletten") == 0) {
   if (i_a) {
    Util_strlcpy(COLOURS_NTSC_external.filename, argv[++i], sizeof(COLOURS_NTSC_external.filename));

    COLOURS_NTSC_external.loaded = TRUE;
   } else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-paletten-adjust") == 0)
   COLOURS_NTSC_external.adjust = TRUE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-ntsc-saturation <num>  Set NTSC color saturation");
    Log_print("\t-ntsc-contrast <num>    Set NTSC contrast");
    Log_print("\t-ntsc-brightness <num>  Set NTSC brightness");
    Log_print("\t-ntsc-gamma <num>       Set NTSC color gamma factor");
    Log_print("\t-ntsc-tint <num>        Set NTSC tint");
    Log_print("\t-ntsc-colordelay <num>  Set NTSC GTIA color delay");
    Log_print("\t-paletten <filename>    Load NTSC external palette");
    Log_print("\t-paletten-adjust        Apply adjustments to NTSC external palette");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }
 *argc = j;


 if (COLOURS_NTSC_external.loaded && !COLOURS_EXTERNAL_Read(&COLOURS_NTSC_external))
  Log_print("Cannot read NTSC palette from %s", COLOURS_NTSC_external.filename);

 return TRUE;
}
