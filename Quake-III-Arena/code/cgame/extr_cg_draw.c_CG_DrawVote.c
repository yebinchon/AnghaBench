
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int time; } ;
struct TYPE_4__ {int talkSound; } ;
struct TYPE_5__ {int voteTime; int voteNo; int voteYes; int voteString; TYPE_1__ media; scalar_t__ voteModified; } ;


 int CG_DrawSmallString (int ,int,char*,float) ;
 int CHAN_LOCAL_SOUND ;
 int SMALLCHAR_HEIGHT ;
 int VOTE_TIME ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 scalar_t__ qfalse ;
 int trap_S_StartLocalSound (int ,int ) ;
 char* va (char*,int,int ,int ,int ) ;

__attribute__((used)) static void CG_DrawVote(void) {
 char *s;
 int sec;

 if ( !cgs.voteTime ) {
  return;
 }


 if ( cgs.voteModified ) {
  cgs.voteModified = qfalse;
  trap_S_StartLocalSound( cgs.media.talkSound, CHAN_LOCAL_SOUND );
 }

 sec = ( VOTE_TIME - ( cg.time - cgs.voteTime ) ) / 1000;
 if ( sec < 0 ) {
  sec = 0;
 }






 s = va("VOTE(%i):%s yes:%i no:%i", sec, cgs.voteString, cgs.voteYes, cgs.voteNo );
 CG_DrawSmallString( 0, 58, s, 1.0F );

}
