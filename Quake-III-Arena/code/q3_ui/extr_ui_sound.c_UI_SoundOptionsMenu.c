
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sound; int menu; } ;


 int Menu_SetCursorToItem (int *,int *) ;
 int UI_PushMenu (int *) ;
 int UI_SoundOptionsMenu_Init () ;
 TYPE_1__ soundOptionsInfo ;

void UI_SoundOptionsMenu( void ) {
 UI_SoundOptionsMenu_Init();
 UI_PushMenu( &soundOptionsInfo.menu );
 Menu_SetCursorToItem( &soundOptionsInfo.menu, &soundOptionsInfo.sound );
}
