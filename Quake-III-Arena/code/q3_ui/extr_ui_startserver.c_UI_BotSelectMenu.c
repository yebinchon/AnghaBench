
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int UI_BotSelectMenu_Init (char*) ;
 int UI_PushMenu (int *) ;
 TYPE_1__ botSelectInfo ;

void UI_BotSelectMenu( char *bot ) {
 UI_BotSelectMenu_Init( bot );
 UI_PushMenu( &botSelectInfo.menu );
}
