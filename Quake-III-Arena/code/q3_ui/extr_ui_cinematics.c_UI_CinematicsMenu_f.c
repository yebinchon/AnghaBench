
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * items; } ;
struct TYPE_3__ {TYPE_2__ menu; } ;


 int Menu_SetCursorToItem (TYPE_2__*,int ) ;
 int UI_Argv (int) ;
 int UI_CinematicsMenu () ;
 int atoi (int ) ;
 TYPE_1__ cinematicsMenuInfo ;

void UI_CinematicsMenu_f( void ) {
 int n;

 n = atoi( UI_Argv( 1 ) );
 UI_CinematicsMenu();
 Menu_SetCursorToItem( &cinematicsMenuInfo.menu, cinematicsMenuInfo.menu.items[n + 3] );
}
