
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_7__ {int w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qhandle_t ;
struct TYPE_8__ {size_t clientNum; int* stats; } ;
typedef TYPE_3__ playerState_t ;
typedef int num ;
typedef int centity_t ;
struct TYPE_9__ {TYPE_1__* snap; } ;
struct TYPE_6__ {TYPE_3__ ps; } ;


 int CG_DrawPic (scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ;
 int CG_Text_Paint (scalar_t__,scalar_t__,float,int *,char*,int ,int ,int) ;
 int CG_Text_Width (char*,float,int ) ;
 int Com_sprintf (char*,int,char*,int) ;
 size_t STAT_ARMOR ;
 TYPE_4__ cg ;
 int * cg_entities ;
 int trap_R_SetColor (int *) ;

__attribute__((used)) static void CG_DrawPlayerArmorValue(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle) {
 char num[16];
  int value;
 centity_t *cent;
 playerState_t *ps;

  cent = &cg_entities[cg.snap->ps.clientNum];
 ps = &cg.snap->ps;

 value = ps->stats[STAT_ARMOR];


 if (shader) {
    trap_R_SetColor( color );
  CG_DrawPic(rect->x, rect->y, rect->w, rect->h, shader);
   trap_R_SetColor( ((void*)0) );
 } else {
  Com_sprintf (num, sizeof(num), "%i", value);
  value = CG_Text_Width(num, scale, 0);
   CG_Text_Paint(rect->x + (rect->w - value) / 2, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
 }
}
