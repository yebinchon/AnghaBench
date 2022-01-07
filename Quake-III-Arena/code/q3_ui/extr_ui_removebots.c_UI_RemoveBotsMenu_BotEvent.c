
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t id; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_6__ {size_t selectedBotNum; TYPE_1__* bots; } ;
struct TYPE_4__ {int color; } ;


 size_t ID_BOTNAME0 ;
 int QM_ACTIVATED ;
 int color_orange ;
 int color_white ;
 TYPE_3__ removeBotsMenuInfo ;

__attribute__((used)) static void UI_RemoveBotsMenu_BotEvent( void* ptr, int event ) {
 if (event != QM_ACTIVATED) {
  return;
 }

 removeBotsMenuInfo.bots[removeBotsMenuInfo.selectedBotNum].color = color_orange;
 removeBotsMenuInfo.selectedBotNum = ((menucommon_s*)ptr)->id - ID_BOTNAME0;
 removeBotsMenuInfo.bots[removeBotsMenuInfo.selectedBotNum].color = color_white;
}
