
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int client_t ;
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int numSnapshotEntities; scalar_t__ initialized; int clients; } ;


 int Com_Error (int ,char*) ;
 int Cvar_Set (char*,char*) ;
 int ERR_FATAL ;
 int PACKET_BACKUP ;
 int SV_BoundMaxClients (int) ;
 int Z_Malloc (int) ;
 TYPE_3__* com_dedicated ;
 scalar_t__ qtrue ;
 TYPE_2__* sv_maxclients ;
 TYPE_1__ svs ;

void SV_Startup( void ) {
 if ( svs.initialized ) {
  Com_Error( ERR_FATAL, "SV_Startup: svs.initialized" );
 }
 SV_BoundMaxClients( 1 );

 svs.clients = Z_Malloc (sizeof(client_t) * sv_maxclients->integer );
 if ( com_dedicated->integer ) {
  svs.numSnapshotEntities = sv_maxclients->integer * PACKET_BACKUP * 64;
 } else {

  svs.numSnapshotEntities = sv_maxclients->integer * 4 * 64;
 }
 svs.initialized = qtrue;

 Cvar_Set( "sv_running", "1" );
}
