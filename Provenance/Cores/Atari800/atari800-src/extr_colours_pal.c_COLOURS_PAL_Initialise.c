
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* filename; int loaded; int adjust; } ;
struct TYPE_4__ {void* color_delay; void* hue; void* gamma; void* brightness; void* contrast; void* saturation; } ;


 int COLOURS_EXTERNAL_Read (TYPE_2__*) ;
 TYPE_2__ COLOURS_PAL_external ;
 TYPE_1__ COLOURS_PAL_setup ;
 int FALSE ;
 int Log_print (char*,...) ;
 int TRUE ;
 int Util_strlcpy (char*,char*,int) ;
 void* atof (char*) ;
 scalar_t__ strcmp (char*,char*) ;

int COLOURS_PAL_Initialise(int *argc, char *argv[])
{
 int i;
 int j;

 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;

  if (strcmp(argv[i], "-pal-saturation") == 0) {
   if (i_a)
    COLOURS_PAL_setup.saturation = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-contrast") == 0) {
   if (i_a)
    COLOURS_PAL_setup.contrast = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-brightness") == 0) {
   if (i_a)
    COLOURS_PAL_setup.brightness = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-gamma") == 0) {
   if (i_a)
    COLOURS_PAL_setup.gamma = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-tint") == 0) {
   if (i_a)
    COLOURS_PAL_setup.hue = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-pal-colordelay") == 0) {
   if (i_a)
    COLOURS_PAL_setup.color_delay = atof(argv[++i]);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-palettep") == 0) {
   if (i_a) {
    Util_strlcpy(COLOURS_PAL_external.filename, argv[++i], sizeof(COLOURS_PAL_external.filename));

    COLOURS_PAL_external.loaded = TRUE;
   } else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-palettep-adjust") == 0)
   COLOURS_PAL_external.adjust = TRUE;
  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-pal-saturation <num>  Set PAL color saturation");
    Log_print("\t-pal-contrast <num>    Set PAL contrast");
    Log_print("\t-pal-brightness <num>  Set PAL brightness");
    Log_print("\t-pal-gamma <num>       Set PAL color gamma factor");
    Log_print("\t-pal-tint <num>        Set PAL tint");
    Log_print("\t-pal-colordelay <num>  Set PAL GTIA color delay");
    Log_print("\t-palettep <filename>   Load PAL external palette");
    Log_print("\t-palettep-adjust       Apply adjustments to PAL external palette");
   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  }
 }
 *argc = j;


 if (COLOURS_PAL_external.loaded && !COLOURS_EXTERNAL_Read(&COLOURS_PAL_external))
  Log_print("Cannot read PAL palette from %s", COLOURS_PAL_external.filename);

 return TRUE;
}
