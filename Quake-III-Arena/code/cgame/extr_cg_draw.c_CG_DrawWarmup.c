
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ team; int name; scalar_t__ infoValid; } ;
typedef TYPE_2__ clientInfo_t ;
struct TYPE_8__ {int warmup; int warmupCount; int time; } ;
struct TYPE_5__ {int count3Sound; int count2Sound; int count1Sound; } ;
struct TYPE_7__ {scalar_t__ gametype; int maxclients; TYPE_1__ media; TYPE_2__* clientinfo; } ;


 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,int,char const*,float) ;
 int CG_DrawStringExt (int,int,char const*,int ,int ,int ,int,int,int ) ;
 int CG_DrawStrlen (char const*) ;
 int CG_Text_Paint (int,int,float,int ,char const*,int ,int ,int ) ;
 int CG_Text_Width (char const*,float,int ) ;
 int CHAN_ANNOUNCER ;
 int GIANT_WIDTH ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_FFA ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 scalar_t__ GT_TEAM ;
 scalar_t__ GT_TOURNAMENT ;
 int ITEM_TEXTSTYLE_SHADOWEDMORE ;
 scalar_t__ TEAM_FREE ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int colorWhite ;
 int qfalse ;
 int qtrue ;
 int trap_S_StartLocalSound (int ,int ) ;
 char* va (char*,int,...) ;

__attribute__((used)) static void CG_DrawWarmup( void ) {
 int w;
 int sec;
 int i;
 float scale;
 clientInfo_t *ci1, *ci2;
 int cw;
 const char *s;

 sec = cg.warmup;
 if ( !sec ) {
  return;
 }

 if ( sec < 0 ) {
  s = "Waiting for players";
  w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
  CG_DrawBigString(320 - w / 2, 24, s, 1.0F);
  cg.warmupCount = 0;
  return;
 }

 if (cgs.gametype == GT_TOURNAMENT) {

  ci1 = ((void*)0);
  ci2 = ((void*)0);
  for ( i = 0 ; i < cgs.maxclients ; i++ ) {
   if ( cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_FREE ) {
    if ( !ci1 ) {
     ci1 = &cgs.clientinfo[i];
    } else {
     ci2 = &cgs.clientinfo[i];
    }
   }
  }

  if ( ci1 && ci2 ) {
   s = va( "%s vs %s", ci1->name, ci2->name );




   w = CG_DrawStrlen( s );
   if ( w > 640 / GIANT_WIDTH ) {
    cw = 640 / w;
   } else {
    cw = GIANT_WIDTH;
   }
   CG_DrawStringExt( 320 - w * cw/2, 20,s, colorWhite,
     qfalse, qtrue, cw, (int)(cw * 1.5f), 0 );

  }
 } else {
  if ( cgs.gametype == GT_FFA ) {
   s = "Free For All";
  } else if ( cgs.gametype == GT_TEAM ) {
   s = "Team Deathmatch";
  } else if ( cgs.gametype == GT_CTF ) {
   s = "Capture the Flag";
  } else {
   s = "";
  }




  w = CG_DrawStrlen( s );
  if ( w > 640 / GIANT_WIDTH ) {
   cw = 640 / w;
  } else {
   cw = GIANT_WIDTH;
  }
  CG_DrawStringExt( 320 - w * cw/2, 25,s, colorWhite,
    qfalse, qtrue, cw, (int)(cw * 1.1f), 0 );

 }

 sec = ( sec - cg.time ) / 1000;
 if ( sec < 0 ) {
  cg.warmup = 0;
  sec = 0;
 }
 s = va( "Starts in: %i", sec + 1 );
 if ( sec != cg.warmupCount ) {
  cg.warmupCount = sec;
  switch ( sec ) {
  case 0:
   trap_S_StartLocalSound( cgs.media.count1Sound, CHAN_ANNOUNCER );
   break;
  case 1:
   trap_S_StartLocalSound( cgs.media.count2Sound, CHAN_ANNOUNCER );
   break;
  case 2:
   trap_S_StartLocalSound( cgs.media.count3Sound, CHAN_ANNOUNCER );
   break;
  default:
   break;
  }
 }
 scale = 0.45f;
 switch ( cg.warmupCount ) {
 case 0:
  cw = 28;
  scale = 0.54f;
  break;
 case 1:
  cw = 24;
  scale = 0.51f;
  break;
 case 2:
  cw = 20;
  scale = 0.48f;
  break;
 default:
  cw = 16;
  scale = 0.45f;
  break;
 }





 w = CG_DrawStrlen( s );
 CG_DrawStringExt( 320 - w * cw/2, 70, s, colorWhite,
   qfalse, qtrue, cw, (int)(cw * 1.5), 0 );

}
