
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec4_t ;
struct TYPE_8__ {int h; int w; int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
typedef int gitem_t ;
struct TYPE_7__ {int * flagShaders; } ;
struct TYPE_9__ {scalar_t__ gametype; int flagStatus; TYPE_2__ media; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; } ;


 int * BG_FindItemForPowerup (int ) ;
 int CG_DrawPic (int ,int ,int ,int ,int ) ;
 int FLAG_DROPPED ;
 int FLAG_TAKEN_BLUE ;
 int FLAG_TAKEN_RED ;
 scalar_t__ GT_1FCTF ;
 int PW_NEUTRALFLAG ;
 TYPE_4__ cgs ;
 int trap_R_SetColor (scalar_t__*) ;

__attribute__((used)) static void CG_OneFlagStatus(rectDef_t *rect) {
 if (cgs.gametype != GT_1FCTF) {
  return;
 } else {
  gitem_t *item = BG_FindItemForPowerup( PW_NEUTRALFLAG );
  if (item) {
   if( cgs.flagStatus >= 0 && cgs.flagStatus <= 4 ) {
    vec4_t color = {1, 1, 1, 1};
    int index = 0;
    if (cgs.flagStatus == FLAG_TAKEN_RED) {
     color[1] = color[2] = 0;
     index = 1;
    } else if (cgs.flagStatus == FLAG_TAKEN_BLUE) {
     color[0] = color[1] = 0;
     index = 1;
    } else if (cgs.flagStatus == FLAG_DROPPED) {
     index = 2;
    }
     trap_R_SetColor(color);
    CG_DrawPic( rect->x, rect->y, rect->w, rect->h, cgs.media.flagShaders[index] );
   }
  }
 }
}
