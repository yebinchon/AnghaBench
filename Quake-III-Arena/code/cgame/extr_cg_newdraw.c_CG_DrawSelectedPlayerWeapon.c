
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_9__ {size_t curWeapon; } ;
typedef TYPE_3__ clientInfo_t ;
struct TYPE_11__ {scalar_t__ weaponIcon; } ;
struct TYPE_7__ {scalar_t__ deferShader; } ;
struct TYPE_10__ {TYPE_1__ media; TYPE_3__* clientinfo; } ;


 int CG_DrawPic (int ,int ,int ,int ,scalar_t__) ;
 size_t CG_GetSelectedPlayer () ;
 TYPE_5__* cg_weapons ;
 TYPE_4__ cgs ;
 int* sortedTeamPlayers ;

__attribute__((used)) static void CG_DrawSelectedPlayerWeapon( rectDef_t *rect ) {
 clientInfo_t *ci;

  ci = cgs.clientinfo + sortedTeamPlayers[CG_GetSelectedPlayer()];
  if (ci) {
   if ( cg_weapons[ci->curWeapon].weaponIcon ) {
     CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cg_weapons[ci->curWeapon].weaponIcon );
  } else {
     CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.deferShader);
    }
  }
}
