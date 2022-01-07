
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int servernode_t ;
struct TYPE_2__ {scalar_t__ numqueriedservers; scalar_t__ currentping; scalar_t__* numservers; int serverlist; scalar_t__ refreshservers; } ;


 scalar_t__ AS_FAVORITES ;
 int ArenaServers_Compare ;
 int ArenaServers_InsertFavorites () ;
 int ArenaServers_UpdateMenu () ;
 TYPE_1__ g_arenaservers ;
 scalar_t__ g_servertype ;
 scalar_t__ qfalse ;
 int qsort (int ,scalar_t__,int,int ) ;

__attribute__((used)) static void ArenaServers_StopRefresh( void )
{
 if (!g_arenaservers.refreshservers)

  return;

 g_arenaservers.refreshservers = qfalse;

 if (g_servertype == AS_FAVORITES)
 {

  ArenaServers_InsertFavorites();
 }


 if (g_arenaservers.numqueriedservers >= 0)
 {
  g_arenaservers.currentping = *g_arenaservers.numservers;
  g_arenaservers.numqueriedservers = *g_arenaservers.numservers;
 }


 qsort( g_arenaservers.serverlist, *g_arenaservers.numservers, sizeof( servernode_t ), ArenaServers_Compare);

 ArenaServers_UpdateMenu();
}
