
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ serverTime; } ;
typedef TYPE_3__ usercmd_t ;
typedef scalar_t__ qboolean ;
typedef int nullcmd ;
typedef int msg_t ;
struct TYPE_19__ {scalar_t__ serverTime; } ;
struct TYPE_21__ {int deltaMessage; int messageAcknowledge; int reliableAcknowledge; scalar_t__ pureAuthentic; scalar_t__ state; TYPE_2__ lastUsercmd; int name; int gotCP; TYPE_1__* frames; int * reliableCommands; } ;
typedef TYPE_4__ client_t ;
struct TYPE_24__ {int checksumFeed; } ;
struct TYPE_23__ {scalar_t__ integer; } ;
struct TYPE_22__ {int time; } ;
struct TYPE_18__ {int messageAcked; } ;


 scalar_t__ CS_ACTIVE ;
 scalar_t__ CS_PRIMED ;
 int Com_DPrintf (char*,int ,scalar_t__) ;
 int Com_HashKey (int ,int) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int Com_Printf (char*) ;
 int MAX_PACKET_USERCMDS ;
 int MAX_RELIABLE_COMMANDS ;
 int MSG_ReadByte (int *) ;
 int MSG_ReadDeltaUsercmdKey (int *,int,TYPE_3__*,TYPE_3__*) ;
 size_t PACKET_MASK ;
 int SV_ClientEnterWorld (TYPE_4__*,TYPE_3__*) ;
 int SV_ClientThink (TYPE_4__*,TYPE_3__*) ;
 int SV_DropClient (TYPE_4__*,char*) ;
 int SV_SendClientGameState (TYPE_4__*) ;
 TYPE_7__ sv ;
 TYPE_6__* sv_pure ;
 TYPE_5__ svs ;

__attribute__((used)) static void SV_UserMove( client_t *cl, msg_t *msg, qboolean delta ) {
 int i, key;
 int cmdCount;
 usercmd_t nullcmd;
 usercmd_t cmds[MAX_PACKET_USERCMDS];
 usercmd_t *cmd, *oldcmd;

 if ( delta ) {
  cl->deltaMessage = cl->messageAcknowledge;
 } else {
  cl->deltaMessage = -1;
 }

 cmdCount = MSG_ReadByte( msg );

 if ( cmdCount < 1 ) {
  Com_Printf( "cmdCount < 1\n" );
  return;
 }

 if ( cmdCount > MAX_PACKET_USERCMDS ) {
  Com_Printf( "cmdCount > MAX_PACKET_USERCMDS\n" );
  return;
 }


 key = sv.checksumFeed;

 key ^= cl->messageAcknowledge;

 key ^= Com_HashKey(cl->reliableCommands[ cl->reliableAcknowledge & (MAX_RELIABLE_COMMANDS-1) ], 32);

 Com_Memset( &nullcmd, 0, sizeof(nullcmd) );
 oldcmd = &nullcmd;
 for ( i = 0 ; i < cmdCount ; i++ ) {
  cmd = &cmds[i];
  MSG_ReadDeltaUsercmdKey( msg, key, oldcmd, cmd );
  oldcmd = cmd;
 }


 cl->frames[ cl->messageAcknowledge & PACKET_MASK ].messageAcked = svs.time;





 if (sv_pure->integer != 0 && cl->pureAuthentic == 0 && !cl->gotCP) {
  if (cl->state == CS_ACTIVE)
  {

   Com_DPrintf( "%s: didn't get cp command, resending gamestate\n", cl->name, cl->state );
   SV_SendClientGameState( cl );
  }
  return;
 }



 if ( cl->state == CS_PRIMED ) {
  SV_ClientEnterWorld( cl, &cmds[0] );

 }


 if (sv_pure->integer != 0 && cl->pureAuthentic == 0) {
  SV_DropClient( cl, "Cannot validate pure client!");
  return;
 }

 if ( cl->state != CS_ACTIVE ) {
  cl->deltaMessage = -1;
  return;
 }




 for ( i = 0 ; i < cmdCount ; i++ ) {

  if ( cmds[i].serverTime > cmds[cmdCount-1].serverTime ) {
   continue;
  }






  if ( cmds[i].serverTime <= cl->lastUsercmd.serverTime ) {
   continue;
  }
  SV_ClientThink (cl, &cmds[ i ]);
 }
}
