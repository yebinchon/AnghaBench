
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; } ;


 int ART_BACKGROUND ;
 int Menu_Draw (int *) ;
 int UI_CENTER ;
 int UI_DrawBannerString (int,int,char*,int ,int ) ;
 int UI_DrawNamedPic (int,int,int,int,int ) ;
 TYPE_1__ addBotsMenuInfo ;
 int color_white ;

__attribute__((used)) static void UI_AddBotsMenu_Draw( void ) {
 UI_DrawBannerString( 320, 16, "ADD BOTS", UI_CENTER, color_white );
 UI_DrawNamedPic( 320-233, 240-166, 466, 332, ART_BACKGROUND );


 Menu_Draw( &addBotsMenuInfo.menu );
}
