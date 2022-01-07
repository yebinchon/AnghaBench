
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ stereoFrame_t ;
typedef int qboolean ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ value; } ;
struct TYPE_17__ {scalar_t__ value; } ;
struct TYPE_16__ {float value; } ;
struct TYPE_15__ {int time; int viewaxis; int vieworg; int areamask; } ;
struct TYPE_13__ {scalar_t__* stats; int clientNum; } ;
struct TYPE_14__ {int snapFlags; TYPE_2__ ps; int areamask; } ;
struct TYPE_12__ {scalar_t__ hModel; } ;
struct TYPE_11__ {int time; scalar_t__* infoScreenText; int renderingThirdPerson; scalar_t__ frametime; scalar_t__ oldTime; int clientFrame; TYPE_4__ refdef; TYPE_3__* snap; TYPE_1__ testModelEntity; int predictedPlayerState; int hyperspace; int zoomSensitivity; int weaponSelect; int demoPlayback; } ;


 int CG_AddLagometerFrameInfo () ;
 int CG_AddLocalEntities () ;
 int CG_AddMarks () ;
 int CG_AddPacketEntities () ;
 int CG_AddParticles () ;
 int CG_AddTestModel () ;
 int CG_AddViewWeapon (int *) ;
 int CG_CalcViewValues () ;
 int CG_DamageBlendBlob () ;
 int CG_DrawActive (scalar_t__) ;
 int CG_DrawInformation () ;
 int CG_PlayBufferedSounds () ;
 int CG_PlayBufferedVoiceChats () ;
 int CG_PowerupTimerSounds () ;
 int CG_PredictPlayerState () ;
 int CG_Printf (char*,int ) ;
 int CG_ProcessSnapshots () ;
 int CG_UpdateCvars () ;
 int SNAPFLAG_NOT_ACTIVE ;
 size_t STAT_HEALTH ;
 scalar_t__ STEREO_RIGHT ;
 TYPE_10__ cg ;
 TYPE_9__ cg_stats ;
 TYPE_8__ cg_thirdPerson ;
 TYPE_7__ cg_timescale ;
 TYPE_6__ cg_timescaleFadeEnd ;
 TYPE_5__ cg_timescaleFadeSpeed ;
 int memcpy (int ,int ,int) ;
 int qfalse ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_R_ClearScene () ;
 int trap_S_ClearLoopingSounds (int ) ;
 int trap_S_Respatialize (int ,int ,int ,int) ;
 int trap_SetUserCmdValue (int ,int ) ;
 int va (char*,scalar_t__) ;

void CG_DrawActiveFrame( int serverTime, stereoFrame_t stereoView, qboolean demoPlayback ) {
 int inwater;

 cg.time = serverTime;
 cg.demoPlayback = demoPlayback;


 CG_UpdateCvars();



 if ( cg.infoScreenText[0] != 0 ) {
  CG_DrawInformation();
  return;
 }



 trap_S_ClearLoopingSounds(qfalse);


 trap_R_ClearScene();


 CG_ProcessSnapshots();



 if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
  CG_DrawInformation();
  return;
 }


 trap_SetUserCmdValue( cg.weaponSelect, cg.zoomSensitivity );


 cg.clientFrame++;


 CG_PredictPlayerState();


 cg.renderingThirdPerson = cg_thirdPerson.integer || (cg.snap->ps.stats[STAT_HEALTH] <= 0);


 inwater = CG_CalcViewValues();


 if ( !cg.renderingThirdPerson ) {
  CG_DamageBlendBlob();
 }


 if ( !cg.hyperspace ) {
  CG_AddPacketEntities();
  CG_AddMarks();
  CG_AddParticles ();
  CG_AddLocalEntities();
 }
 CG_AddViewWeapon( &cg.predictedPlayerState );


 CG_PlayBufferedSounds();


 CG_PlayBufferedVoiceChats();


 if ( cg.testModelEntity.hModel ) {
  CG_AddTestModel();
 }
 cg.refdef.time = cg.time;
 memcpy( cg.refdef.areamask, cg.snap->areamask, sizeof( cg.refdef.areamask ) );


 CG_PowerupTimerSounds();


 trap_S_Respatialize( cg.snap->ps.clientNum, cg.refdef.vieworg, cg.refdef.viewaxis, inwater );


 if ( stereoView != STEREO_RIGHT ) {
  cg.frametime = cg.time - cg.oldTime;
  if ( cg.frametime < 0 ) {
   cg.frametime = 0;
  }
  cg.oldTime = cg.time;
  CG_AddLagometerFrameInfo();
 }
 if (cg_timescale.value != cg_timescaleFadeEnd.value) {
  if (cg_timescale.value < cg_timescaleFadeEnd.value) {
   cg_timescale.value += cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
   if (cg_timescale.value > cg_timescaleFadeEnd.value)
    cg_timescale.value = cg_timescaleFadeEnd.value;
  }
  else {
   cg_timescale.value -= cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
   if (cg_timescale.value < cg_timescaleFadeEnd.value)
    cg_timescale.value = cg_timescaleFadeEnd.value;
  }
  if (cg_timescaleFadeSpeed.value) {
   trap_Cvar_Set("timescale", va("%f", cg_timescale.value));
  }
 }


 CG_DrawActive( stereoView );

 if ( cg_stats.integer ) {
  CG_Printf( "cg.clientFrame:%i\n", cg.clientFrame );
 }


}
