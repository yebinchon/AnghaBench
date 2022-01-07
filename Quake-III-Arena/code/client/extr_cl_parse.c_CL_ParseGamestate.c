
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nullstate ;
typedef int msg_t ;
typedef int entityState_t ;
struct TYPE_4__ {int dataCount; int* stringOffsets; scalar_t__ stringData; } ;
struct TYPE_6__ {int * entityBaselines; TYPE_1__ gameState; } ;
struct TYPE_5__ {void* checksumFeed; void* clientNum; void* serverCommandSequence; scalar_t__ connectPacketCount; } ;


 int CL_ClearState () ;
 int CL_InitDownloads () ;
 int CL_SystemInfoChanged () ;
 int Com_Error (int ,char*,...) ;
 int Com_Memcpy (scalar_t__,char*,int) ;
 int Com_Memset (int *,int ,int) ;
 int Con_Close () ;
 int Cvar_Set (char*,char*) ;
 int ERR_DROP ;
 int FS_ConditionalRestart (void*) ;
 int GENTITYNUM_BITS ;
 int MAX_CONFIGSTRINGS ;
 int MAX_GAMESTATE_CHARS ;
 int MAX_GENTITIES ;
 char* MSG_ReadBigString (int *) ;
 int MSG_ReadBits (int *,int ) ;
 int MSG_ReadByte (int *) ;
 int MSG_ReadDeltaEntity (int *,int *,int *,int) ;
 void* MSG_ReadLong (int *) ;
 int MSG_ReadShort (int *) ;
 TYPE_3__ cl ;
 TYPE_2__ clc ;
 int strlen (char*) ;
 int svc_EOF ;
 int svc_baseline ;
 int svc_configstring ;

void CL_ParseGamestate( msg_t *msg ) {
 int i;
 entityState_t *es;
 int newnum;
 entityState_t nullstate;
 int cmd;
 char *s;

 Con_Close();

 clc.connectPacketCount = 0;


 CL_ClearState();


 clc.serverCommandSequence = MSG_ReadLong( msg );


 cl.gameState.dataCount = 1;
 while ( 1 ) {
  cmd = MSG_ReadByte( msg );

  if ( cmd == svc_EOF ) {
   break;
  }

  if ( cmd == svc_configstring ) {
   int len;

   i = MSG_ReadShort( msg );
   if ( i < 0 || i >= MAX_CONFIGSTRINGS ) {
    Com_Error( ERR_DROP, "configstring > MAX_CONFIGSTRINGS" );
   }
   s = MSG_ReadBigString( msg );
   len = strlen( s );

   if ( len + 1 + cl.gameState.dataCount > MAX_GAMESTATE_CHARS ) {
    Com_Error( ERR_DROP, "MAX_GAMESTATE_CHARS exceeded" );
   }


   cl.gameState.stringOffsets[ i ] = cl.gameState.dataCount;
   Com_Memcpy( cl.gameState.stringData + cl.gameState.dataCount, s, len + 1 );
   cl.gameState.dataCount += len + 1;
  } else if ( cmd == svc_baseline ) {
   newnum = MSG_ReadBits( msg, GENTITYNUM_BITS );
   if ( newnum < 0 || newnum >= MAX_GENTITIES ) {
    Com_Error( ERR_DROP, "Baseline number out of range: %i", newnum );
   }
   Com_Memset (&nullstate, 0, sizeof(nullstate));
   es = &cl.entityBaselines[ newnum ];
   MSG_ReadDeltaEntity( msg, &nullstate, es, newnum );
  } else {
   Com_Error( ERR_DROP, "CL_ParseGamestate: bad command byte" );
  }
 }

 clc.clientNum = MSG_ReadLong(msg);

 clc.checksumFeed = MSG_ReadLong( msg );


 CL_SystemInfoChanged();


  FS_ConditionalRestart( clc.checksumFeed );



 CL_InitDownloads();


 Cvar_Set( "cl_paused", "0" );
}
