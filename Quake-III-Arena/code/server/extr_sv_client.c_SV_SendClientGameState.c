
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int nullstate ;
typedef int msg_t ;
typedef int msgBuffer ;
struct TYPE_16__ {int number; } ;
typedef TYPE_3__ entityState_t ;
struct TYPE_14__ {int outgoingSequence; } ;
struct TYPE_17__ {struct TYPE_17__* reliableSequence; struct TYPE_17__* lastClientCommand; TYPE_1__ netchan; int gamestateMessageNum; int gotCP; scalar_t__ pureAuthentic; int state; int name; } ;
typedef TYPE_4__ client_t ;
typedef int byte ;
struct TYPE_19__ {TYPE_4__* checksumFeed; TYPE_2__* svEntities; scalar_t__** configstrings; } ;
struct TYPE_18__ {int clients; } ;
struct TYPE_15__ {TYPE_3__ baseline; } ;


 int CS_PRIMED ;
 int Com_DPrintf (char*,int ) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int MAX_CONFIGSTRINGS ;
 int MAX_GENTITIES ;
 int MAX_MSGLEN ;
 int MSG_Init (int *,int *,int) ;
 int MSG_WriteBigString (int *,scalar_t__*) ;
 int MSG_WriteByte (int *,int ) ;
 int MSG_WriteDeltaEntity (int *,TYPE_3__*,TYPE_3__*,int ) ;
 int MSG_WriteLong (int *,TYPE_4__*) ;
 int MSG_WriteShort (int *,int) ;
 int SV_SendMessageToClient (int *,TYPE_4__*) ;
 int SV_UpdateServerCommandsToClient (TYPE_4__*,int *) ;
 int qfalse ;
 int qtrue ;
 TYPE_6__ sv ;
 int svc_EOF ;
 int svc_baseline ;
 int svc_configstring ;
 int svc_gamestate ;
 TYPE_5__ svs ;

void SV_SendClientGameState( client_t *client ) {
 int start;
 entityState_t *base, nullstate;
 msg_t msg;
 byte msgBuffer[MAX_MSGLEN];

  Com_DPrintf ("SV_SendClientGameState() for %s\n", client->name);
 Com_DPrintf( "Going from CS_CONNECTED to CS_PRIMED for %s\n", client->name );
 client->state = CS_PRIMED;
 client->pureAuthentic = 0;
 client->gotCP = qfalse;




 client->gamestateMessageNum = client->netchan.outgoingSequence;

 MSG_Init( &msg, msgBuffer, sizeof( msgBuffer ) );



 MSG_WriteLong( &msg, client->lastClientCommand );





 SV_UpdateServerCommandsToClient( client, &msg );


 MSG_WriteByte( &msg, svc_gamestate );
 MSG_WriteLong( &msg, client->reliableSequence );


 for ( start = 0 ; start < MAX_CONFIGSTRINGS ; start++ ) {
  if (sv.configstrings[start][0]) {
   MSG_WriteByte( &msg, svc_configstring );
   MSG_WriteShort( &msg, start );
   MSG_WriteBigString( &msg, sv.configstrings[start] );
  }
 }


 Com_Memset( &nullstate, 0, sizeof( nullstate ) );
 for ( start = 0 ; start < MAX_GENTITIES; start++ ) {
  base = &sv.svEntities[start].baseline;
  if ( !base->number ) {
   continue;
  }
  MSG_WriteByte( &msg, svc_baseline );
  MSG_WriteDeltaEntity( &msg, &nullstate, base, qtrue );
 }

 MSG_WriteByte( &msg, svc_EOF );

 MSG_WriteLong( &msg, client - svs.clients);


 MSG_WriteLong( &msg, sv.checksumFeed);


 SV_SendMessageToClient( &msg, client );
}
