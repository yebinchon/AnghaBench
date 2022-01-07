
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
typedef int menucommon_s ;
struct TYPE_2__ {int menu; } ;


 int Menu_DefaultKey (int *,int) ;
 int * Menu_ItemAtCursor (int *) ;
 TYPE_1__ s_demos ;

__attribute__((used)) static sfxHandle_t UI_DemosMenu_Key( int key ) {
 menucommon_s *item;

 item = Menu_ItemAtCursor( &s_demos.menu );

 return Menu_DefaultKey( &s_demos.menu, key );
}
