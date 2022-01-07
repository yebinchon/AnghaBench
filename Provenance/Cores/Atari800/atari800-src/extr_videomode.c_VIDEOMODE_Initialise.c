
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int asp_ratio; } ;
struct TYPE_5__ {int width; int height; } ;
struct TYPE_4__ {int width; int height; } ;


 void* CFG_MatchTextParameter (char*,int ,int ) ;
 int FALSE ;
 int Log_print (char*,...) ;
 int ParseAspectRatio (char*,double*,double*) ;
 int TRUE ;
 int Util_sscandec (char*) ;
 int Util_sscandouble (char*,double*) ;
 int Util_sscansdec (char*,int *) ;
 int VIDEOMODE_80_column ;
 int VIDEOMODE_FIT_SIZE ;
 int VIDEOMODE_HORIZONTAL_CUSTOM ;
 int VIDEOMODE_HORIZONTAL_SIZE ;
 int VIDEOMODE_KEEP_ASPECT_SIZE ;
 int VIDEOMODE_MAX_HORIZONTAL_AREA ;
 int VIDEOMODE_MAX_VERTICAL_AREA ;
 int VIDEOMODE_MIN_HORIZONTAL_AREA ;
 int VIDEOMODE_MIN_VERTICAL_AREA ;
 size_t VIDEOMODE_MODE_XEP80 ;
 int VIDEOMODE_STRETCH_CUSTOM ;
 int VIDEOMODE_STRETCH_SIZE ;
 int VIDEOMODE_VERTICAL_CUSTOM ;
 int VIDEOMODE_VERTICAL_SIZE ;
 int VIDEOMODE_custom_horizontal_area ;
 double VIDEOMODE_custom_stretch ;
 int VIDEOMODE_custom_vertical_area ;
 void* VIDEOMODE_fit ;
 int VIDEOMODE_horizontal_area ;
 int VIDEOMODE_horizontal_offset ;
 double VIDEOMODE_host_aspect_ratio_h ;
 double VIDEOMODE_host_aspect_ratio_w ;
 void* VIDEOMODE_keep_aspect ;
 int VIDEOMODE_rotate90 ;
 int VIDEOMODE_stretch ;
 int VIDEOMODE_vertical_area ;
 int VIDEOMODE_vertical_offset ;
 int VIDEOMODE_windowed ;
 TYPE_3__* display_modes ;
 int fit_cfg_strings ;
 int horizontal_area_cfg_strings ;
 TYPE_2__ init_fs_resolution ;
 int keep_aspect_cfg_strings ;
 scalar_t__ strcmp (char*,char*) ;
 int stretch_cfg_strings ;
 int vertical_area_cfg_strings ;
 TYPE_1__ window_resolution ;
 int xep80_aspect_ratio_ntsc ;

int VIDEOMODE_Initialise(int *argc, char *argv[])
{
 int i, j;
 for (i = j = 1; i < *argc; i++) {
  int i_a = (i + 1 < *argc);
  int a_m = FALSE;
  int a_i = FALSE;

  if (strcmp(argv[i], "-win-width") == 0) {
   if (i_a)
    a_i = (window_resolution.width = Util_sscandec(argv[++i])) == -1;
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-win-height") == 0) {
   if (i_a)
    a_i = (window_resolution.height = Util_sscandec(argv[++i])) == -1;
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-fs-width") == 0) {
   if (i_a)
    a_i = (init_fs_resolution.width = Util_sscandec(argv[++i])) == -1;
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-fs-height") == 0) {
   if (i_a)
    a_i = (init_fs_resolution.height = Util_sscandec(argv[++i])) == -1;
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-fullscreen") == 0)
   VIDEOMODE_windowed = FALSE;
  else if (strcmp(argv[i], "-windowed") == 0)
   VIDEOMODE_windowed = TRUE;
  else if (strcmp(argv[i], "-horiz-area") == 0) {
   if (i_a) {
    int idx = CFG_MatchTextParameter(argv[++i], horizontal_area_cfg_strings, VIDEOMODE_HORIZONTAL_SIZE);
    if (idx < 0) {
     VIDEOMODE_horizontal_area = VIDEOMODE_HORIZONTAL_CUSTOM;
     a_i = (VIDEOMODE_custom_horizontal_area = Util_sscandec(argv[i])) == -1
           || VIDEOMODE_custom_horizontal_area < VIDEOMODE_MIN_HORIZONTAL_AREA
           || VIDEOMODE_custom_horizontal_area > VIDEOMODE_MAX_HORIZONTAL_AREA;
    } else
     VIDEOMODE_horizontal_area = idx;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-vert-area") == 0) {
   if (i_a) {
    int idx = CFG_MatchTextParameter(argv[++i], vertical_area_cfg_strings, VIDEOMODE_VERTICAL_SIZE);
    if (idx < 0) {
     VIDEOMODE_vertical_area = VIDEOMODE_VERTICAL_CUSTOM;
     a_i = (VIDEOMODE_custom_vertical_area = Util_sscandec(argv[i])) == -1
           || VIDEOMODE_custom_vertical_area < VIDEOMODE_MIN_VERTICAL_AREA
           || VIDEOMODE_custom_vertical_area > VIDEOMODE_MAX_VERTICAL_AREA;
    } else
     VIDEOMODE_vertical_area = idx;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-horiz-shift") == 0) {
   if (i_a)
    a_i = !Util_sscansdec(argv[++i], &VIDEOMODE_horizontal_offset);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-vert-shift") == 0) {
   if (i_a)
    a_i = !Util_sscansdec(argv[++i], &VIDEOMODE_vertical_offset);
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-stretch") == 0) {
   if (i_a) {
    int idx = CFG_MatchTextParameter(argv[++i], stretch_cfg_strings, VIDEOMODE_STRETCH_SIZE);
    if (idx < 0) {
     VIDEOMODE_stretch = VIDEOMODE_STRETCH_CUSTOM;
     a_i = !Util_sscandouble(argv[i], &VIDEOMODE_custom_stretch)
           || VIDEOMODE_custom_stretch < 1.0;
    } else
     VIDEOMODE_stretch = idx;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-fit-screen") == 0) {
   if (i_a) {
    if ((VIDEOMODE_fit = CFG_MatchTextParameter(argv[++i], fit_cfg_strings, VIDEOMODE_FIT_SIZE)) < 0)
     a_i = TRUE;
   }
   else a_m = TRUE;
  }
  else if (strcmp(argv[i], "-image-aspect") == 0) {
   if (i_a) {
    if ((VIDEOMODE_keep_aspect = CFG_MatchTextParameter(argv[++i], keep_aspect_cfg_strings, VIDEOMODE_KEEP_ASPECT_SIZE)) < 0)
     a_i = TRUE;
   }
   else a_m = TRUE;
  }






  else if (strcmp(argv[i], "-host-aspect-ratio") == 0) {
   if (i_a) {
    if (strcmp(argv[++i], "auto") == 0)
     VIDEOMODE_host_aspect_ratio_w = VIDEOMODE_host_aspect_ratio_h = 0.0;
    else
     a_i = !ParseAspectRatio(argv[i], &VIDEOMODE_host_aspect_ratio_w, &VIDEOMODE_host_aspect_ratio_h);
   }
   else a_m = TRUE;
  }






  else {
   if (strcmp(argv[i], "-help") == 0) {
    Log_print("\t-win-width <num>            Host window width");
    Log_print("\t-win-height <num>           Host window height");
    Log_print("\t-fs-width <num>             Host fullscreen width");
    Log_print("\t-fs-height <num>            Host fullscreen height");
    Log_print("\t-fullscreen                 Run fullscreen");
    Log_print("\t-windowed                   Run in window");
    Log_print("\t-horiz-area narrow|tv|full|<number>");
    Log_print("\t                            Set horizontal view area");
    Log_print("\t-vert-area short|tv|full|<number>");
    Log_print("\t                            Set vertical view area");
    Log_print("\t-horiz-shift <num>          Set horizontal shift of the visible area (-%i..%i)", VIDEOMODE_MAX_HORIZONTAL_AREA, VIDEOMODE_MAX_HORIZONTAL_AREA);
    Log_print("\t-vert-shift <num>           Set vertical shift of the visible area (-%i..%i)", VIDEOMODE_MAX_VERTICAL_AREA, VIDEOMODE_MAX_VERTICAL_AREA);
    Log_print("\t-stretch none|integral|full|<number>");
    Log_print("\t                            Set method of image stretching");
    Log_print("\t-fit-screen width|height|both");
    Log_print("\t                            Set method of image fitting the screen");
    Log_print("\t-image-aspect none|square-pixels|real");
    Log_print("\t                            Set image aspect ratio");




    Log_print("\t-host-aspect-ratio auto|<w>:<h>");
    Log_print("\t                            Set host display aspect ratio");




   }
   argv[j++] = argv[i];
  }

  if (a_m) {
   Log_print("Missing argument for '%s'", argv[i]);
   return FALSE;
  } else if (a_i) {
   Log_print("Invalid argument for '%s'", argv[--i]);
   return FALSE;
  }
 }
 *argc = j;




 return TRUE;
}
