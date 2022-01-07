
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
struct TYPE_9__ {double time; } ;
struct TYPE_8__ {int maxclients; TYPE_1__* clientinfo; } ;
struct TYPE_6__ {scalar_t__ team; int powerups; scalar_t__ infoValid; } ;


 int CG_DrawHead (int ,int ,int ,int ,int ,int*) ;
 int PW_REDFLAG ;
 scalar_t__ TEAM_BLUE ;
 int VectorClear (int*) ;
 size_t YAW ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 int sin (double) ;

__attribute__((used)) static void CG_DrawRedFlagHead(rectDef_t *rect) {
  int i;
  for ( i = 0 ; i < cgs.maxclients ; i++ ) {
   if ( cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_BLUE && cgs.clientinfo[i].powerups & ( 1<< PW_REDFLAG )) {
      vec3_t angles;
      VectorClear( angles );
     angles[YAW] = 180 + 20 * sin( cg.time / 650.0 );;
      CG_DrawHead( rect->x, rect->y, rect->w, rect->h, 0,angles );
      return;
    }
  }
}
