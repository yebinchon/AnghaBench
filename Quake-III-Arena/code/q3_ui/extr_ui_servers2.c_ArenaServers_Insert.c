
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pingtime; int gametype; int gamename; void* nettype; void* bPB; void* maxPing; void* minPing; void* maxclients; void* numclients; int mapname; int hostname; int adrstr; } ;
typedef TYPE_1__ servernode_t ;
struct TYPE_4__ {scalar_t__* numservers; scalar_t__ maxservers; TYPE_1__* serverlist; } ;


 scalar_t__ AS_FAVORITES ;
 int ArenaServers_MaxPing () ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_ADDRESSLENGTH ;
 int MAX_HOSTNAMELENGTH ;
 int MAX_MAPNAMELENGTH ;
 int Q_CleanStr (int ) ;
 int Q_strncpyz (int ,char*,int) ;
 int Q_strupr (int ) ;
 void* atoi (char*) ;
 TYPE_2__ g_arenaservers ;
 scalar_t__ g_servertype ;
 char** gamenames ;

__attribute__((used)) static void ArenaServers_Insert( char* adrstr, char* info, int pingtime )
{
 servernode_t* servernodeptr;
 char* s;
 int i;


 if ((pingtime >= ArenaServers_MaxPing()) && (g_servertype != AS_FAVORITES))
 {

  return;
 }

 if (*g_arenaservers.numservers >= g_arenaservers.maxservers) {

  servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers)-1;
 } else {

  servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers);
  (*g_arenaservers.numservers)++;
 }

 Q_strncpyz( servernodeptr->adrstr, adrstr, MAX_ADDRESSLENGTH );

 Q_strncpyz( servernodeptr->hostname, Info_ValueForKey( info, "hostname"), MAX_HOSTNAMELENGTH );
 Q_CleanStr( servernodeptr->hostname );
 Q_strupr( servernodeptr->hostname );

 Q_strncpyz( servernodeptr->mapname, Info_ValueForKey( info, "mapname"), MAX_MAPNAMELENGTH );
 Q_CleanStr( servernodeptr->mapname );
 Q_strupr( servernodeptr->mapname );

 servernodeptr->numclients = atoi( Info_ValueForKey( info, "clients") );
 servernodeptr->maxclients = atoi( Info_ValueForKey( info, "sv_maxclients") );
 servernodeptr->pingtime = pingtime;
 servernodeptr->minPing = atoi( Info_ValueForKey( info, "minPing") );
 servernodeptr->maxPing = atoi( Info_ValueForKey( info, "maxPing") );
 servernodeptr->bPB = atoi( Info_ValueForKey( info, "punkbuster") );
 servernodeptr->nettype = atoi(Info_ValueForKey(info, "nettype"));

 s = Info_ValueForKey( info, "game");
 i = atoi( Info_ValueForKey( info, "gametype") );
 if( i < 0 ) {
  i = 0;
 }
 else if( i > 11 ) {
  i = 12;
 }
 if( *s ) {
  servernodeptr->gametype = i;
  Q_strncpyz( servernodeptr->gamename, s, sizeof(servernodeptr->gamename) );
 }
 else {
  servernodeptr->gametype = i;
  Q_strncpyz( servernodeptr->gamename, gamenames[i], sizeof(servernodeptr->gamename) );
 }
}
