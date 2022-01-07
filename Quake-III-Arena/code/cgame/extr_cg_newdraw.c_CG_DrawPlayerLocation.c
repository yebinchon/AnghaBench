
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


typedef int vec4_t ;
struct TYPE_10__ {scalar_t__ h; scalar_t__ y; int x; } ;
typedef TYPE_3__ rectDef_t ;
struct TYPE_11__ {scalar_t__ location; } ;
typedef TYPE_4__ clientInfo_t ;
struct TYPE_13__ {TYPE_2__* snap; } ;
struct TYPE_12__ {TYPE_4__* clientinfo; } ;
struct TYPE_8__ {size_t clientNum; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 char* CG_ConfigString (scalar_t__) ;
 int CG_Text_Paint (int ,scalar_t__,float,int ,char const*,int ,int ,int) ;
 scalar_t__ CS_LOCATIONS ;
 TYPE_6__ cg ;
 TYPE_5__ cgs ;

__attribute__((used)) static void CG_DrawPlayerLocation( rectDef_t *rect, float scale, vec4_t color, int textStyle ) {
 clientInfo_t *ci = &cgs.clientinfo[cg.snap->ps.clientNum];
  if (ci) {
  const char *p = CG_ConfigString(CS_LOCATIONS + ci->location);
  if (!p || !*p) {
   p = "unknown";
  }
    CG_Text_Paint(rect->x, rect->y + rect->h, scale, color, p, 0, 0, textStyle);
  }
}
