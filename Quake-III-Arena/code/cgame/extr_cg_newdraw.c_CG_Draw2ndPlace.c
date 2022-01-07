
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;
struct TYPE_5__ {scalar_t__ scores2; } ;


 int CG_Text_Paint (int ,int ,float,int ,int ,int ,int ,int) ;
 scalar_t__ SCORE_NOT_PRESENT ;
 TYPE_2__ cgs ;
 int va (char*,scalar_t__) ;

__attribute__((used)) static void CG_Draw2ndPlace(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle) {
 if (cgs.scores2 != SCORE_NOT_PRESENT) {
  CG_Text_Paint(rect->x, rect->y, scale, color, va("%2i", cgs.scores2),0, 0, textStyle);
 }
}
