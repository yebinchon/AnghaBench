
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int h; int w; int y; int x; } ;
typedef TYPE_3__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_11__ {int teamTask; } ;
typedef TYPE_4__ clientInfo_t ;
struct TYPE_13__ {TYPE_2__* snap; } ;
struct TYPE_12__ {TYPE_4__* clientinfo; } ;
struct TYPE_8__ {size_t clientNum; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 int CG_DrawPic (int ,int ,int ,int ,int ) ;
 int CG_StatusHandle (int ) ;
 TYPE_6__ cg ;
 TYPE_5__ cgs ;

__attribute__((used)) static void CG_DrawPlayerStatus( rectDef_t *rect ) {
 clientInfo_t *ci = &cgs.clientinfo[cg.snap->ps.clientNum];
 if (ci) {
  qhandle_t h = CG_StatusHandle(ci->teamTask);
  CG_DrawPic( rect->x, rect->y, rect->w, rect->h, h);
 }
}
