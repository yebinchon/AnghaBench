
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_2__ {int menu; int list; scalar_t__ refreshservers; } ;


 scalar_t__ AS_FAVORITES ;
 int ArenaServers_Remove () ;
 int ArenaServers_SaveChanges () ;
 int ArenaServers_StopRefresh () ;
 int ArenaServers_UpdateMenu () ;
 int K_DEL ;
 int K_ESCAPE ;
 int K_KP_DEL ;
 int K_MOUSE2 ;
 int K_SPACE ;
 int Menu_DefaultKey (int *,int) ;
 int * Menu_ItemAtCursor (int *) ;
 TYPE_1__ g_arenaservers ;
 scalar_t__ g_servertype ;
 int menu_move_sound ;

__attribute__((used)) static sfxHandle_t ArenaServers_MenuKey( int key ) {
 if( key == K_SPACE && g_arenaservers.refreshservers ) {
  ArenaServers_StopRefresh();
  return menu_move_sound;
 }

 if( ( key == K_DEL || key == K_KP_DEL ) && ( g_servertype == AS_FAVORITES ) &&
  ( Menu_ItemAtCursor( &g_arenaservers.menu) == &g_arenaservers.list ) ) {
  ArenaServers_Remove();
  ArenaServers_UpdateMenu();
  return menu_move_sound;
 }

 if( key == K_MOUSE2 || key == K_ESCAPE ) {
  ArenaServers_StopRefresh();
  ArenaServers_SaveChanges();
 }


 return Menu_DefaultKey( &g_arenaservers.menu, key );
}
