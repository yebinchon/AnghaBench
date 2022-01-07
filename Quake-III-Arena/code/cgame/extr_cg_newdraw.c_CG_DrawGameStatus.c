
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_3__ {scalar_t__ h; scalar_t__ y; int x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qhandle_t ;


 int CG_GetGameStatusText () ;
 int CG_Text_Paint (int ,scalar_t__,float,int ,int ,int ,int ,int) ;

__attribute__((used)) static void CG_DrawGameStatus(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
 CG_Text_Paint(rect->x, rect->y + rect->h, scale, color, CG_GetGameStatusText(), 0, 0, textStyle);
}
