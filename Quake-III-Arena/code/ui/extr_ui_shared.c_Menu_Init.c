
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cursorItem; int window; int fadeCycle; int fadeClamp; int fadeAmount; } ;
typedef TYPE_2__ menuDef_t ;
struct TYPE_6__ {int fadeCycle; int fadeClamp; int fadeAmount; } ;
struct TYPE_8__ {TYPE_1__ Assets; } ;


 TYPE_5__* DC ;
 int Window_Init (int *) ;
 int memset (TYPE_2__*,int ,int) ;

void Menu_Init(menuDef_t *menu) {
 memset(menu, 0, sizeof(menuDef_t));
 menu->cursorItem = -1;
 menu->fadeAmount = DC->Assets.fadeAmount;
 menu->fadeClamp = DC->Assets.fadeClamp;
 menu->fadeCycle = DC->Assets.fadeCycle;
 Window_Init(&menu->window);
}
