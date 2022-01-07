
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu; scalar_t__ refreshservers; } ;


 int ArenaServers_DoRefresh () ;
 int Menu_Draw (int *) ;
 TYPE_1__ g_arenaservers ;

__attribute__((used)) static void ArenaServers_MenuDraw( void )
{
 if (g_arenaservers.refreshservers)
  ArenaServers_DoRefresh();

 Menu_Draw( &g_arenaservers.menu );
}
