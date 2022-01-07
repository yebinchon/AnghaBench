
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_2__ {size_t* awardsEarned; scalar_t__* playedSound; } ;


 int AWARD_PRESENTATION_TIME ;
 int CHAN_ANNOUNCER ;
 int UI_CENTER ;
 int UI_DrawProportionalString (int,int,int ,int ,float*) ;
 int UI_SPPostgameMenu_DrawAwardsMedals (int) ;
 TYPE_1__ postgameMenuInfo ;
 int qfalse ;
 scalar_t__ qtrue ;
 int trap_S_RegisterSound (int ,int ) ;
 int trap_S_StartLocalSound (int ,int ) ;
 int * ui_medalNames ;
 int * ui_medalSounds ;

__attribute__((used)) static void UI_SPPostgameMenu_DrawAwardsPresentation( int timer ) {
 int awardNum;
 int atimer;
 vec4_t color;

 awardNum = timer / AWARD_PRESENTATION_TIME;
 atimer = timer % AWARD_PRESENTATION_TIME;

 color[0] = color[1] = color[2] = 1.0f;
 color[3] = (float)( AWARD_PRESENTATION_TIME - atimer ) / (float)AWARD_PRESENTATION_TIME;
 UI_DrawProportionalString( 320, 64, ui_medalNames[postgameMenuInfo.awardsEarned[awardNum]], UI_CENTER, color );

 UI_SPPostgameMenu_DrawAwardsMedals( awardNum + 1 );

 if( !postgameMenuInfo.playedSound[awardNum] ) {
  postgameMenuInfo.playedSound[awardNum] = qtrue;
  trap_S_StartLocalSound( trap_S_RegisterSound( ui_medalSounds[postgameMenuInfo.awardsEarned[awardNum]], qfalse ), CHAN_ANNOUNCER );
 }
}
