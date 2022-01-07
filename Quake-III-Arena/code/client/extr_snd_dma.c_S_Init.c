
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfx_t ;
typedef scalar_t__ qboolean ;
struct TYPE_2__ {int integer; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ARCHIVE ;
 int CVAR_CHEAT ;
 int Cmd_AddCommand (char*,int (*) ()) ;
 int Com_Memset (int ,int ,int) ;
 int Com_Printf (char*) ;
 void* Cvar_Get (char*,char*,int ) ;
 int LOOP_HASH ;
 scalar_t__ SNDDMA_Init () ;
 int S_Music_f () ;
 int S_Play_f () ;
 int S_SoundInfo_f () ;
 int S_SoundList_f () ;
 int S_StopAllSounds () ;
 void* s_doppler ;
 void* s_khz ;
 void* s_mixPreStep ;
 void* s_mixahead ;
 void* s_musicVolume ;
 scalar_t__ s_paintedtime ;
 void* s_separation ;
 void* s_show ;
 int s_soundMuted ;
 int s_soundStarted ;
 scalar_t__ s_soundtime ;
 void* s_testsound ;
 void* s_volume ;
 int sfxHash ;

void S_Init( void ) {
 cvar_t *cv;
 qboolean r;

 Com_Printf("\n------- sound initialization -------\n");

 s_volume = Cvar_Get ("s_volume", "0.8", CVAR_ARCHIVE);
 s_musicVolume = Cvar_Get ("s_musicvolume", "0.25", CVAR_ARCHIVE);
 s_separation = Cvar_Get ("s_separation", "0.5", CVAR_ARCHIVE);
 s_doppler = Cvar_Get ("s_doppler", "1", CVAR_ARCHIVE);
 s_khz = Cvar_Get ("s_khz", "22", CVAR_ARCHIVE);
 s_mixahead = Cvar_Get ("s_mixahead", "0.2", CVAR_ARCHIVE);

 s_mixPreStep = Cvar_Get ("s_mixPreStep", "0.05", CVAR_ARCHIVE);
 s_show = Cvar_Get ("s_show", "0", CVAR_CHEAT);
 s_testsound = Cvar_Get ("s_testsound", "0", CVAR_CHEAT);

 cv = Cvar_Get ("s_initsound", "1", 0);
 if ( !cv->integer ) {
  Com_Printf ("not initializing.\n");
  Com_Printf("------------------------------------\n");
  return;
 }

 Cmd_AddCommand("play", S_Play_f);
 Cmd_AddCommand("music", S_Music_f);
 Cmd_AddCommand("s_list", S_SoundList_f);
 Cmd_AddCommand("s_info", S_SoundInfo_f);
 Cmd_AddCommand("s_stop", S_StopAllSounds);

 r = SNDDMA_Init();
 Com_Printf("------------------------------------\n");

 if ( r ) {
  s_soundStarted = 1;
  s_soundMuted = 1;


  Com_Memset(sfxHash, 0, sizeof(sfx_t *)*LOOP_HASH);

  s_soundtime = 0;
  s_paintedtime = 0;

  S_StopAllSounds ();

  S_SoundInfo_f();
 }

}
