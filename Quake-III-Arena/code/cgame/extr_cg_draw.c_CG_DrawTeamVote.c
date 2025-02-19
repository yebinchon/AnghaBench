
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int time; } ;
struct TYPE_6__ {int talkSound; } ;
struct TYPE_7__ {int* teamVoteTime; int * teamVoteNo; int * teamVoteYes; int * teamVoteString; TYPE_2__ media; scalar_t__* teamVoteModified; TYPE_1__* clientinfo; } ;
struct TYPE_5__ {scalar_t__ team; } ;


 int CG_DrawSmallString (int ,int,char*,float) ;
 int CHAN_LOCAL_SOUND ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 int VOTE_TIME ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 scalar_t__ qfalse ;
 int trap_S_StartLocalSound (int ,int ) ;
 char* va (char*,int,int ,int ,int ) ;

__attribute__((used)) static void CG_DrawTeamVote(void) {
 char *s;
 int sec, cs_offset;

 if ( cgs.clientinfo->team == TEAM_RED )
  cs_offset = 0;
 else if ( cgs.clientinfo->team == TEAM_BLUE )
  cs_offset = 1;
 else
  return;

 if ( !cgs.teamVoteTime[cs_offset] ) {
  return;
 }


 if ( cgs.teamVoteModified[cs_offset] ) {
  cgs.teamVoteModified[cs_offset] = qfalse;
  trap_S_StartLocalSound( cgs.media.talkSound, CHAN_LOCAL_SOUND );
 }

 sec = ( VOTE_TIME - ( cg.time - cgs.teamVoteTime[cs_offset] ) ) / 1000;
 if ( sec < 0 ) {
  sec = 0;
 }
 s = va("TEAMVOTE(%i):%s yes:%i no:%i", sec, cgs.teamVoteString[cs_offset],
       cgs.teamVoteYes[cs_offset], cgs.teamVoteNo[cs_offset] );
 CG_DrawSmallString( 0, 90, s, 1.0F );
}
