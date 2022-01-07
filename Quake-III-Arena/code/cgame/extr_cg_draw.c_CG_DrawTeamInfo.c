
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_14__ {scalar_t__ time; TYPE_2__* snap; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_10__ {int teamStatusBar; } ;
struct TYPE_11__ {int teamLastChatPos; int teamChatPos; scalar_t__* teamChatMsgTimes; int * teamChatMsgs; TYPE_3__ media; } ;
struct TYPE_8__ {scalar_t__* persistant; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 int CG_DrawPic (scalar_t__,scalar_t__,int,int,int ) ;
 int CG_DrawStringExt (scalar_t__,scalar_t__,int ,float*,int ,int ,int,int,int ) ;
 int CG_DrawStrlen (int ) ;
 scalar_t__ CHATLOC_X ;
 scalar_t__ CHATLOC_Y ;
 size_t PERS_TEAM ;
 int TEAMCHAT_HEIGHT ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 int TINYCHAR_HEIGHT ;
 int TINYCHAR_WIDTH ;
 TYPE_7__ cg ;
 TYPE_6__ cg_teamChatHeight ;
 TYPE_5__ cg_teamChatTime ;
 TYPE_4__ cgs ;
 int qfalse ;
 int trap_R_SetColor (float*) ;

__attribute__((used)) static void CG_DrawTeamInfo( void ) {
 int w, h;
 int i, len;
 vec4_t hcolor;
 int chatHeight;




 if (cg_teamChatHeight.integer < TEAMCHAT_HEIGHT)
  chatHeight = cg_teamChatHeight.integer;
 else
  chatHeight = TEAMCHAT_HEIGHT;
 if (chatHeight <= 0)
  return;

 if (cgs.teamLastChatPos != cgs.teamChatPos) {
  if (cg.time - cgs.teamChatMsgTimes[cgs.teamLastChatPos % chatHeight] > cg_teamChatTime.integer) {
   cgs.teamLastChatPos++;
  }

  h = (cgs.teamChatPos - cgs.teamLastChatPos) * TINYCHAR_HEIGHT;

  w = 0;

  for (i = cgs.teamLastChatPos; i < cgs.teamChatPos; i++) {
   len = CG_DrawStrlen(cgs.teamChatMsgs[i % chatHeight]);
   if (len > w)
    w = len;
  }
  w *= TINYCHAR_WIDTH;
  w += TINYCHAR_WIDTH * 2;

  if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_RED ) {
   hcolor[0] = 1.0f;
   hcolor[1] = 0.0f;
   hcolor[2] = 0.0f;
   hcolor[3] = 0.33f;
  } else if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_BLUE ) {
   hcolor[0] = 0.0f;
   hcolor[1] = 0.0f;
   hcolor[2] = 1.0f;
   hcolor[3] = 0.33f;
  } else {
   hcolor[0] = 0.0f;
   hcolor[1] = 1.0f;
   hcolor[2] = 0.0f;
   hcolor[3] = 0.33f;
  }

  trap_R_SetColor( hcolor );
  CG_DrawPic( 0, 420 - h, 640, h, cgs.media.teamStatusBar );
  trap_R_SetColor( ((void*)0) );

  hcolor[0] = hcolor[1] = hcolor[2] = 1.0f;
  hcolor[3] = 1.0f;

  for (i = cgs.teamChatPos - 1; i >= cgs.teamLastChatPos; i--) {
   CG_DrawStringExt( 0 + TINYCHAR_WIDTH,
    420 - (cgs.teamChatPos - i)*TINYCHAR_HEIGHT,
    cgs.teamChatMsgs[i % chatHeight], hcolor, qfalse, qfalse,
    TINYCHAR_WIDTH, TINYCHAR_HEIGHT, 0 );
  }
 }
}
