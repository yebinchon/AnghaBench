
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int servernode_t ;
struct TYPE_2__ {int * numservers; int serverlist; } ;


 int ArenaServers_Compare ;
 TYPE_1__ g_arenaservers ;
 int g_sortkey ;
 int qsort (int ,int ,int,int ) ;

void ArenaServers_Sort( int type ) {
 if( g_sortkey == type ) {
  return;
 }

 g_sortkey = type;
 qsort( g_arenaservers.serverlist, *g_arenaservers.numservers, sizeof( servernode_t ), ArenaServers_Compare);
}
