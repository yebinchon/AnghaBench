
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec4_t ;
typedef int qboolean ;
typedef int gitem_t ;
struct TYPE_10__ {TYPE_2__* snap; } ;
struct TYPE_8__ {int selectShader; int * flagShader; int * redFlagShader; int * blueFlagShader; } ;
struct TYPE_9__ {int scores1; int scores2; scalar_t__ gametype; int blueflag; int redflag; int flagStatus; int capturelimit; int fraglimit; TYPE_3__ media; } ;
struct TYPE_6__ {int* persistant; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int * BG_FindItemForPowerup (int ) ;
 int BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,float,char const*,float) ;
 int CG_DrawPic (int,float,int,int,int ) ;
 int CG_DrawStrlen (char const*) ;
 int CG_FillRect (int,float,int,int,float*) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_TEAM ;
 size_t PERS_SCORE ;
 size_t PERS_TEAM ;
 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 int SCORE_NOT_PRESENT ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;
 TYPE_5__ cg ;
 TYPE_4__ cgs ;
 char* va (char*,int) ;

__attribute__((used)) static float CG_DrawScores( float y ) {
 const char *s;
 int s1, s2, score;
 int x, w;
 int v;
 vec4_t color;
 float y1;
 gitem_t *item;

 s1 = cgs.scores1;
 s2 = cgs.scores2;

 y -= BIGCHAR_HEIGHT + 8;

 y1 = y;


 if ( cgs.gametype >= GT_TEAM ) {
  x = 640;
  color[0] = 0.0f;
  color[1] = 0.0f;
  color[2] = 1.0f;
  color[3] = 0.33f;
  s = va( "%2i", s2 );
  w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
  x -= w;
  CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
  if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_BLUE ) {
   CG_DrawPic( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
  }
  CG_DrawBigString( x + 4, y, s, 1.0F);

  if ( cgs.gametype == GT_CTF ) {

   item = BG_FindItemForPowerup( PW_BLUEFLAG );

   if (item) {
    y1 = y - BIGCHAR_HEIGHT - 8;
    if( cgs.blueflag >= 0 && cgs.blueflag <= 2 ) {
     CG_DrawPic( x, y1-4, w, BIGCHAR_HEIGHT+8, cgs.media.blueFlagShader[cgs.blueflag] );
    }
   }
  }
  color[0] = 1.0f;
  color[1] = 0.0f;
  color[2] = 0.0f;
  color[3] = 0.33f;
  s = va( "%2i", s1 );
  w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
  x -= w;
  CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
  if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_RED ) {
   CG_DrawPic( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
  }
  CG_DrawBigString( x + 4, y, s, 1.0F);

  if ( cgs.gametype == GT_CTF ) {

   item = BG_FindItemForPowerup( PW_REDFLAG );

   if (item) {
    y1 = y - BIGCHAR_HEIGHT - 8;
    if( cgs.redflag >= 0 && cgs.redflag <= 2 ) {
     CG_DrawPic( x, y1-4, w, BIGCHAR_HEIGHT+8, cgs.media.redFlagShader[cgs.redflag] );
    }
   }
  }
  if ( cgs.gametype >= GT_CTF ) {
   v = cgs.capturelimit;
  } else {
   v = cgs.fraglimit;
  }
  if ( v ) {
   s = va( "%2i", v );
   w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
   x -= w;
   CG_DrawBigString( x + 4, y, s, 1.0F);
  }

 } else {
  qboolean spectator;

  x = 640;
  score = cg.snap->ps.persistant[PERS_SCORE];
  spectator = ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR );


  if ( s1 != score ) {
   s2 = score;
  }
  if ( s2 != SCORE_NOT_PRESENT ) {
   s = va( "%2i", s2 );
   w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
   x -= w;
   if ( !spectator && score == s2 && score != s1 ) {
    color[0] = 1.0f;
    color[1] = 0.0f;
    color[2] = 0.0f;
    color[3] = 0.33f;
    CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
    CG_DrawPic( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
   } else {
    color[0] = 0.5f;
    color[1] = 0.5f;
    color[2] = 0.5f;
    color[3] = 0.33f;
    CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
   }
   CG_DrawBigString( x + 4, y, s, 1.0F);
  }


  if ( s1 != SCORE_NOT_PRESENT ) {
   s = va( "%2i", s1 );
   w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
   x -= w;
   if ( !spectator && score == s1 ) {
    color[0] = 0.0f;
    color[1] = 0.0f;
    color[2] = 1.0f;
    color[3] = 0.33f;
    CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
    CG_DrawPic( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
   } else {
    color[0] = 0.5f;
    color[1] = 0.5f;
    color[2] = 0.5f;
    color[3] = 0.33f;
    CG_FillRect( x, y-4, w, BIGCHAR_HEIGHT+8, color );
   }
   CG_DrawBigString( x + 4, y, s, 1.0F);
  }

  if ( cgs.fraglimit ) {
   s = va( "%2i", cgs.fraglimit );
   w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH + 8;
   x -= w;
   CG_DrawBigString( x + 4, y, s, 1.0F);
  }

 }

 return y1 - 8;
}
