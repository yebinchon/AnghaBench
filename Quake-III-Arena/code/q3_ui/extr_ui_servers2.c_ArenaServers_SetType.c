
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int string; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ generic; } ;
struct TYPE_8__ {TYPE_3__ status; scalar_t__* numservers; scalar_t__ numqueriedservers; scalar_t__ currentping; void* maxservers; int serverlist; TYPE_2__ remove; } ;






 int ArenaServers_StartRefresh () ;
 int ArenaServers_UpdateMenu () ;
 void* MAX_FAVORITESERVERS ;
 void* MAX_GLOBALSERVERS ;
 void* MAX_LOCALSERVERS ;
 int QMF_HIDDEN ;
 int QMF_INACTIVE ;
 TYPE_4__ g_arenaservers ;
 int g_favoriteserverlist ;
 int g_globalserverlist ;
 int g_localserverlist ;
 int g_mplayerserverlist ;
 scalar_t__ g_numfavoriteservers ;
 scalar_t__ g_numglobalservers ;
 scalar_t__ g_numlocalservers ;
 scalar_t__ g_nummplayerservers ;
 int g_servertype ;
 int strcpy (int ,char*) ;

void ArenaServers_SetType( int type )
{
 if (g_servertype == type)
  return;

 g_servertype = type;

 switch( type ) {
 default:
 case 129:
  g_arenaservers.remove.generic.flags |= (QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_localserverlist;
  g_arenaservers.numservers = &g_numlocalservers;
  g_arenaservers.maxservers = MAX_LOCALSERVERS;
  break;

 case 130:
  g_arenaservers.remove.generic.flags |= (QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_globalserverlist;
  g_arenaservers.numservers = &g_numglobalservers;
  g_arenaservers.maxservers = MAX_GLOBALSERVERS;
  break;

 case 131:
  g_arenaservers.remove.generic.flags &= ~(QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_favoriteserverlist;
  g_arenaservers.numservers = &g_numfavoriteservers;
  g_arenaservers.maxservers = MAX_FAVORITESERVERS;
  break;

 case 128:
  g_arenaservers.remove.generic.flags |= (QMF_INACTIVE|QMF_HIDDEN);
  g_arenaservers.serverlist = g_mplayerserverlist;
  g_arenaservers.numservers = &g_nummplayerservers;
  g_arenaservers.maxservers = MAX_GLOBALSERVERS;
  break;

 }

 if( !*g_arenaservers.numservers ) {
  ArenaServers_StartRefresh();
 }
 else {

  g_arenaservers.currentping = *g_arenaservers.numservers;
  g_arenaservers.numqueriedservers = *g_arenaservers.numservers;
  ArenaServers_UpdateMenu();
 }
 strcpy(g_arenaservers.status.string,"hit refresh to update");
}
