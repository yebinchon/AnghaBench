
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* servernode; } ;
typedef TYPE_2__ table_t ;
struct TYPE_11__ {int adrstr; } ;
typedef TYPE_3__ servernode_t ;
struct TYPE_9__ {size_t curvalue; int numitems; } ;
struct TYPE_12__ {int numfavoriteaddresses; int numqueriedservers; int currentping; TYPE_3__* favoriteaddresses; TYPE_1__ list; TYPE_2__* table; } ;
typedef int MAX_ADDRESSLENGTH ;


 int Q_stricmp (TYPE_3__,int ) ;
 TYPE_7__ g_arenaservers ;
 TYPE_3__* g_favoriteserverlist ;
 int g_numfavoriteservers ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static void ArenaServers_Remove( void )
{
 int i;
 servernode_t* servernodeptr;
 table_t* tableptr;

 if (!g_arenaservers.list.numitems)
  return;





 tableptr = &g_arenaservers.table[g_arenaservers.list.curvalue];
 servernodeptr = tableptr->servernode;


 for (i=0; i<g_arenaservers.numfavoriteaddresses; i++)
  if (!Q_stricmp(g_arenaservers.favoriteaddresses[i],servernodeptr->adrstr))
    break;


 if (i <= g_arenaservers.numfavoriteaddresses-1)
 {
  if (i < g_arenaservers.numfavoriteaddresses-1)
  {

   memcpy( &g_arenaservers.favoriteaddresses[i], &g_arenaservers.favoriteaddresses[i+1], (g_arenaservers.numfavoriteaddresses - i - 1)*sizeof(MAX_ADDRESSLENGTH));
  }
  g_arenaservers.numfavoriteaddresses--;
 }


 for (i=0; i<g_numfavoriteservers; i++)
  if (&g_favoriteserverlist[i] == servernodeptr)
    break;


 if (i <= g_numfavoriteservers-1)
 {
  if (i < g_numfavoriteservers-1)
  {

   memcpy( &g_favoriteserverlist[i], &g_favoriteserverlist[i+1], (g_numfavoriteservers - i - 1)*sizeof(servernode_t));
  }
  g_numfavoriteservers--;
 }

 g_arenaservers.numqueriedservers = g_arenaservers.numfavoriteaddresses;
 g_arenaservers.currentping = g_arenaservers.numfavoriteaddresses;
}
