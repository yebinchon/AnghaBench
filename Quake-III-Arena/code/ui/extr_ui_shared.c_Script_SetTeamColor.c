
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec4_t ;
struct TYPE_5__ {int * backColor; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_7__ {int (* getTeamColor ) (int **) ;} ;


 TYPE_4__* DC ;
 int stub1 (int **) ;

void Script_SetTeamColor(itemDef_t *item, char **args) {
  if (DC->getTeamColor) {
    int i;
    vec4_t color;
    DC->getTeamColor(&color);
    for (i = 0; i < 4; i++) {
      item->window.backColor[i] = color[i];
    }
  }
}
