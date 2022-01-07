
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef double* vec4_t ;
typedef int st ;
typedef scalar_t__ qboolean ;
struct TYPE_14__ {int icon; } ;
typedef TYPE_4__ gitem_t ;
struct TYPE_15__ {scalar_t__ team; char const* name; size_t curWeapon; int powerups; int armor; int health; scalar_t__ location; scalar_t__ infoValid; } ;
typedef TYPE_5__ clientInfo_t ;
struct TYPE_19__ {TYPE_3__* snap; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {scalar_t__ weaponIcon; } ;
struct TYPE_11__ {scalar_t__ deferShader; scalar_t__ teamStatusBar; } ;
struct TYPE_16__ {TYPE_1__ media; TYPE_5__* clientinfo; } ;
struct TYPE_12__ {scalar_t__* persistant; } ;
struct TYPE_13__ {TYPE_2__ ps; } ;


 TYPE_4__* BG_FindItemForPowerup (int) ;
 char* CG_ConfigString (scalar_t__) ;
 int CG_DrawPic (int,float,int,int,scalar_t__) ;
 int CG_DrawStringExt (int,float,char const*,double*,int ,int ,int,int,int) ;
 int CG_DrawStrlen (char const*) ;
 int CG_GetColorForHealth (int ,int ,double*) ;
 scalar_t__ CS_LOCATIONS ;
 int Com_sprintf (char*,int,char*,int ,int ) ;
 int MAX_LOCATIONS ;
 size_t PERS_TEAM ;
 int PW_NUM_POWERUPS ;
 scalar_t__ TEAM_BLUE ;
 int TEAM_OVERLAY_MAXLOCATION_WIDTH ;
 int TEAM_OVERLAY_MAXNAME_WIDTH ;
 scalar_t__ TEAM_RED ;
 int TINYCHAR_HEIGHT ;
 int TINYCHAR_WIDTH ;
 TYPE_9__ cg ;
 TYPE_8__ cg_drawTeamOverlay ;
 TYPE_7__* cg_weapons ;
 TYPE_6__ cgs ;
 int numSortedTeamPlayers ;
 int qfalse ;
 int* sortedTeamPlayers ;
 scalar_t__ trap_R_RegisterShader (int ) ;
 int trap_R_SetColor (double*) ;

__attribute__((used)) static float CG_DrawTeamOverlay( float y, qboolean right, qboolean upper ) {
 int x, w, h, xx;
 int i, j, len;
 const char *p;
 vec4_t hcolor;
 int pwidth, lwidth;
 int plyrs;
 char st[16];
 clientInfo_t *ci;
 gitem_t *item;
 int ret_y, count;

 if ( !cg_drawTeamOverlay.integer ) {
  return y;
 }

 if ( cg.snap->ps.persistant[PERS_TEAM] != TEAM_RED && cg.snap->ps.persistant[PERS_TEAM] != TEAM_BLUE ) {
  return y;
 }

 plyrs = 0;


 pwidth = 0;
 count = (numSortedTeamPlayers > 8) ? 8 : numSortedTeamPlayers;
 for (i = 0; i < count; i++) {
  ci = cgs.clientinfo + sortedTeamPlayers[i];
  if ( ci->infoValid && ci->team == cg.snap->ps.persistant[PERS_TEAM]) {
   plyrs++;
   len = CG_DrawStrlen(ci->name);
   if (len > pwidth)
    pwidth = len;
  }
 }

 if (!plyrs)
  return y;

 if (pwidth > TEAM_OVERLAY_MAXNAME_WIDTH)
  pwidth = TEAM_OVERLAY_MAXNAME_WIDTH;


 lwidth = 0;
 for (i = 1; i < MAX_LOCATIONS; i++) {
  p = CG_ConfigString(CS_LOCATIONS + i);
  if (p && *p) {
   len = CG_DrawStrlen(p);
   if (len > lwidth)
    lwidth = len;
  }
 }

 if (lwidth > TEAM_OVERLAY_MAXLOCATION_WIDTH)
  lwidth = TEAM_OVERLAY_MAXLOCATION_WIDTH;

 w = (pwidth + lwidth + 4 + 7) * TINYCHAR_WIDTH;

 if ( right )
  x = 640 - w;
 else
  x = 0;

 h = plyrs * TINYCHAR_HEIGHT;

 if ( upper ) {
  ret_y = y + h;
 } else {
  y -= h;
  ret_y = y;
 }

 if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_RED ) {
  hcolor[0] = 1.0f;
  hcolor[1] = 0.0f;
  hcolor[2] = 0.0f;
  hcolor[3] = 0.33f;
 } else {
  hcolor[0] = 0.0f;
  hcolor[1] = 0.0f;
  hcolor[2] = 1.0f;
  hcolor[3] = 0.33f;
 }
 trap_R_SetColor( hcolor );
 CG_DrawPic( x, y, w, h, cgs.media.teamStatusBar );
 trap_R_SetColor( ((void*)0) );

 for (i = 0; i < count; i++) {
  ci = cgs.clientinfo + sortedTeamPlayers[i];
  if ( ci->infoValid && ci->team == cg.snap->ps.persistant[PERS_TEAM]) {

   hcolor[0] = hcolor[1] = hcolor[2] = hcolor[3] = 1.0;

   xx = x + TINYCHAR_WIDTH;

   CG_DrawStringExt( xx, y,
    ci->name, hcolor, qfalse, qfalse,
    TINYCHAR_WIDTH, TINYCHAR_HEIGHT, TEAM_OVERLAY_MAXNAME_WIDTH);

   if (lwidth) {
    p = CG_ConfigString(CS_LOCATIONS + ci->location);
    if (!p || !*p)
     p = "unknown";
    len = CG_DrawStrlen(p);
    if (len > lwidth)
     len = lwidth;



    xx = x + TINYCHAR_WIDTH * 2 + TINYCHAR_WIDTH * pwidth;
    CG_DrawStringExt( xx, y,
     p, hcolor, qfalse, qfalse, TINYCHAR_WIDTH, TINYCHAR_HEIGHT,
     TEAM_OVERLAY_MAXLOCATION_WIDTH);
   }

   CG_GetColorForHealth( ci->health, ci->armor, hcolor );

   Com_sprintf (st, sizeof(st), "%3i %3i", ci->health, ci->armor);

   xx = x + TINYCHAR_WIDTH * 3 +
    TINYCHAR_WIDTH * pwidth + TINYCHAR_WIDTH * lwidth;

   CG_DrawStringExt( xx, y,
    st, hcolor, qfalse, qfalse,
    TINYCHAR_WIDTH, TINYCHAR_HEIGHT, 0 );


   xx += TINYCHAR_WIDTH * 3;

   if ( cg_weapons[ci->curWeapon].weaponIcon ) {
    CG_DrawPic( xx, y, TINYCHAR_WIDTH, TINYCHAR_HEIGHT,
     cg_weapons[ci->curWeapon].weaponIcon );
   } else {
    CG_DrawPic( xx, y, TINYCHAR_WIDTH, TINYCHAR_HEIGHT,
     cgs.media.deferShader );
   }


   if (right) {
    xx = x;
   } else {
    xx = x + w - TINYCHAR_WIDTH;
   }
   for (j = 0; j <= PW_NUM_POWERUPS; j++) {
    if (ci->powerups & (1 << j)) {

     item = BG_FindItemForPowerup( j );

     if (item) {
      CG_DrawPic( xx, y, TINYCHAR_WIDTH, TINYCHAR_HEIGHT,
      trap_R_RegisterShader( item->icon ) );
      if (right) {
       xx -= TINYCHAR_WIDTH;
      } else {
       xx += TINYCHAR_WIDTH;
      }
     }
    }
   }

   y += TINYCHAR_HEIGHT;
  }
 }

 return ret_y;

}
