
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numfavoriteaddresses; int * favoriteaddresses; } ;
struct TYPE_3__ {int adrstr; } ;


 int ArenaServers_Insert (int ,char*,int ) ;
 int ArenaServers_MaxPing () ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_STRING ;
 int Q_stricmp (int ,int ) ;
 TYPE_2__ g_arenaservers ;
 TYPE_1__* g_favoriteserverlist ;
 int g_numfavoriteservers ;

void ArenaServers_InsertFavorites( void )
{
 int i;
 int j;
 char info[MAX_INFO_STRING];


 info[0] = '\0';
 Info_SetValueForKey( info, "hostname", "No Response" );
 for (i=0; i<g_arenaservers.numfavoriteaddresses; i++)
 {

  for (j=0; j<g_numfavoriteservers; j++)
   if (!Q_stricmp(g_arenaservers.favoriteaddresses[i],g_favoriteserverlist[j].adrstr))
    break;

  if ( j >= g_numfavoriteservers)
  {

   ArenaServers_Insert( g_arenaservers.favoriteaddresses[i], info, ArenaServers_MaxPing() );
  }
 }
}
