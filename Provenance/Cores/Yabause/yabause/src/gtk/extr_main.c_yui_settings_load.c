
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; } ;
typedef int gchar ;
typedef int gboolean ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_13__ {TYPE_1__ allocation; } ;
struct TYPE_12__ {char* Name; } ;
struct TYPE_11__ {int (* Resize ) (int ,int ,int ) ;} ;
struct TYPE_10__ {int cdcoretype; int regionid; int carttype; int sh2coretype; int m68kcoretype; int vidcoretype; int osdcoretype; int sndcoretype; int percoretype; int clocksync; long basetime; int usethreads; int videoformattype; int * mpegpath; int * buppath; int * cartpath; int * cdpath; int * biospath; } ;
struct TYPE_9__ {int state; int area; } ;


 int Cs2ChangeCDCore (int,int *) ;
 int FALSE ;
 TYPE_7__* GTK_WIDGET (int ) ;
 int G_KEY_FILE_NONE ;
 int OSDChangeCore (int) ;
 TYPE_6__* PERCore ;


 int PORTDATA1 ;
 int PerInit (int) ;
 int PerMouseAdd (int *) ;
 char** PerMouseNames ;
 int PerPadAdd (int *) ;
 char** PerPadNames ;
 int PerPortReset () ;
 int PerSetKey (int,int,int ) ;
 int ScspChangeSoundCore (int) ;
 int ScspSetFrameAccurate (int) ;
 int ScspSetVolume (int) ;
 int TRUE ;
 TYPE_5__* VIDCore ;
 int VIDSoftSetBilinear (int) ;
 int VideoChangeCore (int) ;
 int YUI_IS_INIT ;
 TYPE_2__* YUI_WINDOW (int ) ;
 void* biospath ;
 void* buppath ;
 void* cartpath ;
 void* cdpath ;
 void* g_key_file_get_boolean (int ,char*,char*,int ) ;
 int g_key_file_get_integer (int ,char*,char*,int *) ;
 void* g_key_file_get_value (int ,char*,char*,int ) ;
 int g_key_file_load_from_file (int ,int ,int ,int ) ;
 int g_strlcpy (void*,int *,int) ;
 int inifile ;
 int keyfile ;
 int localtime_r (int*,struct tm*) ;
 void* mpegpath ;
 int padbits ;
 scalar_t__ safe_strcmp (int *,int *) ;
 int sprintf (char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int stub1 (int ,int ,int ) ;
 TYPE_3__ yinit ;
 int yui ;
 int yui_resize (int,int,int) ;
 int yui_window_set_frameskip (TYPE_2__*,int) ;

__attribute__((used)) static gboolean yui_settings_load(void) {
 int i, tmp;
 long tmptime;
 gchar * stmp;
 gboolean mustRestart = FALSE;

 g_key_file_load_from_file(keyfile, inifile, G_KEY_FILE_NONE, 0);


 stmp = g_key_file_get_value(keyfile, "General", "BiosPath", 0);
 if (stmp && !*stmp) stmp = ((void*)0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && safe_strcmp(stmp, yinit.biospath)) {
  mustRestart = TRUE;
 }
 if (stmp) {
  g_strlcpy(biospath, stmp, 256);
  yinit.biospath = biospath;
 }
 else yinit.biospath = ((void*)0);


 stmp = g_key_file_get_value(keyfile, "General", "CDROMDrive", 0);
 if (stmp && !*stmp) stmp = ((void*)0);
 if((YUI_WINDOW(yui)->state & YUI_IS_INIT) && safe_strcmp(stmp, yinit.cdpath)) {
  Cs2ChangeCDCore(yinit.cdcoretype, stmp);
 }
 if (stmp) g_strlcpy(cdpath, stmp, 256);

 tmp = yinit.cdcoretype;
 yinit.cdcoretype = g_key_file_get_integer(keyfile, "General", "CDROMCore", 0);
 if((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.cdcoretype)) {
  Cs2ChangeCDCore(yinit.cdcoretype, yinit.cdpath);
 }


 {
  char * region = g_key_file_get_value(keyfile, "General", "Region", 0);
  tmp = yinit.regionid;
  if ((region == 0) || !strcmp(region, "Auto")) {
   yinit.regionid = 0;
  } else {
   switch(region[0]) {
    case 'J': yinit.regionid = 1; break;
    case 'T': yinit.regionid = 2; break;
    case 'U': yinit.regionid = 4; break;
    case 'B': yinit.regionid = 5; break;
    case 'K': yinit.regionid = 6; break;
    case 'A': yinit.regionid = 0xA; break;
    case 'E': yinit.regionid = 0xC; break;
    case 'L': yinit.regionid = 0xD; break;
   }
  }

  if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.regionid)) {
   mustRestart = TRUE;
  }
 }


 stmp = g_key_file_get_value(keyfile, "General", "CartPath", 0);
 if (stmp && !*stmp) stmp = ((void*)0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && safe_strcmp(stmp, yinit.cartpath)) {
  mustRestart = TRUE;
 }
 if (stmp) {
  g_strlcpy(cartpath, stmp, 256);
  yinit.cartpath = cartpath;
 }
 else yinit.cartpath = ((void*)0);

 tmp = yinit.carttype;
 yinit.carttype = g_key_file_get_integer(keyfile, "General", "CartType", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.carttype)) {
          mustRestart = TRUE;
 }


 stmp = g_key_file_get_value(keyfile, "General", "BackupRamPath", 0);
 if (stmp && !*stmp) stmp = ((void*)0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && safe_strcmp(stmp, yinit.buppath)) {
  mustRestart = TRUE;
 }
 if (stmp) {
  g_strlcpy(buppath, stmp, 256);
  yinit.buppath = buppath;
 }
 else yinit.buppath = ((void*)0);


 stmp = g_key_file_get_value(keyfile, "General", "MpegRomPath", 0);
 if (stmp && !*stmp) stmp = ((void*)0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && safe_strcmp(stmp, yinit.mpegpath)) {
  mustRestart = TRUE;
 }
 if (stmp) {
  g_strlcpy(mpegpath, stmp, 256);
  yinit.mpegpath = mpegpath;
 }
 else yinit.mpegpath = ((void*)0);


 tmp = yinit.sh2coretype;
 yinit.sh2coretype = g_key_file_get_integer(keyfile, "General", "SH2Int", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.sh2coretype)) {
  mustRestart = TRUE;
 }


 tmp = yinit.m68kcoretype;
 yinit.m68kcoretype = g_key_file_get_integer(keyfile, "General", "M68kInt", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.m68kcoretype)) {
  mustRestart = TRUE;
 }


 tmp = yinit.vidcoretype;
 yinit.vidcoretype = g_key_file_get_integer(keyfile, "General", "VideoCore", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.vidcoretype)) {
  VideoChangeCore(yinit.vidcoretype);
  VIDCore->Resize(
   GTK_WIDGET(YUI_WINDOW(yui)->area)->allocation.width,
   GTK_WIDGET(YUI_WINDOW(yui)->area)->allocation.height,
   FALSE);
 }


 tmp = yinit.osdcoretype;
 yinit.osdcoretype = g_key_file_get_integer(keyfile, "General", "OSDCore", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.osdcoretype)) {
  OSDChangeCore(yinit.osdcoretype);
 }


 tmp = yinit.sndcoretype;
 yinit.sndcoretype = g_key_file_get_integer(keyfile, "General", "SoundCore", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.sndcoretype)) {
  ScspChangeSoundCore(yinit.sndcoretype);
 }

 ScspSetVolume(g_key_file_get_integer(keyfile, "General", "Volume", ((void*)0)));


 yinit.percoretype = g_key_file_get_integer(keyfile, "General", "PerCore", 0);


 tmp = g_key_file_get_boolean(keyfile, "General", "AudioSync", 0);
 ScspSetFrameAccurate(tmp);


 tmp = yinit.clocksync;
 yinit.clocksync = g_key_file_get_boolean(keyfile, "General", "ClockSync", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.clocksync)) {
  mustRestart = TRUE;
 }
 tmptime = yinit.basetime;
 tmp = g_key_file_get_boolean(keyfile, "General", "FixedBaseTime", 0);
 if (tmp && yinit.clocksync) {

  time_t utc = 883656000;
  struct tm tm;
  long local, noon;
  localtime_r(&utc, &tm);
  local = tm.tm_hour*3600 + tm.tm_min*60 + tm.tm_sec;
  if (tm.tm_mday == 2)
   local += 86400;
  else if (tm.tm_mday == 31)
   local -= 86400;
  noon = 12*3600 + 0*60 + 0;
  yinit.basetime = (long)utc + (noon - local);
 } else {
  yinit.basetime = 0;
 }
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmptime != yinit.basetime)) {
  mustRestart = TRUE;
 }


 tmp = g_key_file_get_boolean(keyfile, "General", "UseThreads", 0);
 if ((YUI_WINDOW(yui)->state & YUI_IS_INIT) && (tmp != yinit.usethreads)) {
  mustRestart = TRUE;
 }
 yinit.usethreads = tmp;

 PerInit(yinit.percoretype);

 PerPortReset();
 switch(g_key_file_get_integer(keyfile, "General", "PerType", ((void*)0)))
 {
  case 129:
   padbits = PerMouseAdd(&PORTDATA1);
   i = 0;

   while(PerMouseNames[i]) {
    char tmp[100];
    u32 key;
    sprintf(tmp, "Mouse.%s.1", PerMouseNames[i]);
      key = g_key_file_get_integer(keyfile, PERCore->Name, tmp, 0);
      PerSetKey(key, i + 13, padbits);
      i++;
   }
   break;
  case 128:
  default:
   padbits = PerPadAdd(&PORTDATA1);
   i = 0;

   while(PerPadNames[i]) {
    char tmp[100];
    u32 key;
    sprintf(tmp, "Pad.%s.1", PerPadNames[i]);
      key = g_key_file_get_integer(keyfile, PERCore->Name, tmp, 0);
      PerSetKey(key, i, padbits);
      i++;
   }
 }

 yui_resize(g_key_file_get_integer(keyfile, "General", "Width", 0),
   g_key_file_get_integer(keyfile, "General", "Height", 0),
   g_key_file_get_integer(keyfile, "General", "Fullscreen", 0));

        yinit.videoformattype = g_key_file_get_integer(keyfile, "General", "VideoFormat", 0);

 yui_window_set_frameskip(YUI_WINDOW(yui), g_key_file_get_integer(keyfile, "General", "Frameskip", ((void*)0)));

 VIDSoftSetBilinear(g_key_file_get_integer(keyfile, "General", "Bilinear", 0));

 return mustRestart;
}
