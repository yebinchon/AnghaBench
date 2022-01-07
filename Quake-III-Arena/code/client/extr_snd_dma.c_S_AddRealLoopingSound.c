
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {scalar_t__ inMemory; int soundName; int soundLength; } ;
typedef TYPE_1__ sfx_t ;
typedef size_t sfxHandle_t ;
struct TYPE_6__ {scalar_t__ doppler; scalar_t__ kill; int active; TYPE_1__* sfx; int velocity; int origin; } ;


 int Com_Error (int ,char*,int ) ;
 int Com_Printf (int ,char*,size_t) ;
 int ERR_DROP ;
 int S_COLOR_YELLOW ;
 int S_memoryLoad (TYPE_1__*) ;
 int VectorCopy (int const,int ) ;
 TYPE_3__* loopSounds ;
 scalar_t__ qfalse ;
 int qtrue ;
 TYPE_1__* s_knownSfx ;
 size_t s_numSfx ;
 scalar_t__ s_soundMuted ;
 int s_soundStarted ;

void S_AddRealLoopingSound( int entityNum, const vec3_t origin, const vec3_t velocity, sfxHandle_t sfxHandle ) {
 sfx_t *sfx;

 if ( !s_soundStarted || s_soundMuted ) {
  return;
 }

 if ( sfxHandle < 0 || sfxHandle >= s_numSfx ) {
  Com_Printf( S_COLOR_YELLOW, "S_AddRealLoopingSound: handle %i out of range\n", sfxHandle );
  return;
 }

 sfx = &s_knownSfx[ sfxHandle ];

 if (sfx->inMemory == qfalse) {
  S_memoryLoad(sfx);
 }

 if ( !sfx->soundLength ) {
  Com_Error( ERR_DROP, "%s has length 0", sfx->soundName );
 }
 VectorCopy( origin, loopSounds[entityNum].origin );
 VectorCopy( velocity, loopSounds[entityNum].velocity );
 loopSounds[entityNum].sfx = sfx;
 loopSounds[entityNum].active = qtrue;
 loopSounds[entityNum].kill = qfalse;
 loopSounds[entityNum].doppler = qfalse;
}
