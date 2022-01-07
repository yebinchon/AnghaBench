
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_7__ {scalar_t__ teamShader; TYPE_2__* vmCvar; int modificationCount; int cvarFlags; int defaultString; int cvarName; } ;
typedef TYPE_1__ cvarTable_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int modificationCount; } ;
struct TYPE_9__ {int warmupModificationCount; } ;
struct TYPE_8__ {int modificationCount; } ;


 scalar_t__ GT_MAX_GAME_TYPE ;
 int G_Printf (char*,scalar_t__) ;
 int G_RemapTeamShaders () ;
 TYPE_6__ g_gametype ;
 TYPE_5__ g_warmup ;
 TYPE_1__* gameCvarTable ;
 int gameCvarTableSize ;
 TYPE_3__ level ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int trap_Cvar_Register (TYPE_2__*,int ,int ,int ) ;
 int trap_Cvar_Set (char*,char*) ;

void G_RegisterCvars( void ) {
 int i;
 cvarTable_t *cv;
 qboolean remapped = qfalse;

 for ( i = 0, cv = gameCvarTable ; i < gameCvarTableSize ; i++, cv++ ) {
  trap_Cvar_Register( cv->vmCvar, cv->cvarName,
   cv->defaultString, cv->cvarFlags );
  if ( cv->vmCvar )
   cv->modificationCount = cv->vmCvar->modificationCount;

  if (cv->teamShader) {
   remapped = qtrue;
  }
 }

 if (remapped) {
  G_RemapTeamShaders();
 }


 if ( g_gametype.integer < 0 || g_gametype.integer >= GT_MAX_GAME_TYPE ) {
  G_Printf( "g_gametype %i is out of range, defaulting to 0\n", g_gametype.integer );
  trap_Cvar_Set( "g_gametype", "0" );
 }

 level.warmupModificationCount = g_warmup.modificationCount;
}
