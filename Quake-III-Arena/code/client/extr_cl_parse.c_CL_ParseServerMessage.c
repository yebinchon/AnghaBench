
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ cursize; scalar_t__ readcount; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {scalar_t__ reliableAcknowledge; scalar_t__ reliableSequence; } ;


 int CL_ParseCommandString (TYPE_1__*) ;
 int CL_ParseDownload (TYPE_1__*) ;
 int CL_ParseGamestate (TYPE_1__*) ;
 int CL_ParseSnapshot (TYPE_1__*) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,...) ;
 int ERR_DROP ;
 scalar_t__ MAX_RELIABLE_COMMANDS ;
 int MSG_Bitstream (TYPE_1__*) ;
 int MSG_ReadByte (TYPE_1__*) ;
 scalar_t__ MSG_ReadLong (TYPE_1__*) ;
 int SHOWNET (TYPE_1__*,char*) ;
 TYPE_3__* cl_shownet ;
 TYPE_2__ clc ;
 int svc_EOF ;





 char** svc_strings ;

void CL_ParseServerMessage( msg_t *msg ) {
 int cmd;

 if ( cl_shownet->integer == 1 ) {
  Com_Printf ("%i ",msg->cursize);
 } else if ( cl_shownet->integer >= 2 ) {
  Com_Printf ("------------------\n");
 }

 MSG_Bitstream(msg);


 clc.reliableAcknowledge = MSG_ReadLong( msg );

 if ( clc.reliableAcknowledge < clc.reliableSequence - MAX_RELIABLE_COMMANDS ) {
  clc.reliableAcknowledge = clc.reliableSequence;
 }




 while ( 1 ) {
  if ( msg->readcount > msg->cursize ) {
   Com_Error (ERR_DROP,"CL_ParseServerMessage: read past end of server message");
   break;
  }

  cmd = MSG_ReadByte( msg );

  if ( cmd == svc_EOF) {
   SHOWNET( msg, "END OF MESSAGE" );
   break;
  }

  if ( cl_shownet->integer >= 2 ) {
   if ( !svc_strings[cmd] ) {
    Com_Printf( "%3i:BAD CMD %i\n", msg->readcount-1, cmd );
   } else {
    SHOWNET( msg, svc_strings[cmd] );
   }
  }


  switch ( cmd ) {
  default:
   Com_Error (ERR_DROP,"CL_ParseServerMessage: Illegible server message\n");
   break;
  case 130:
   break;
  case 129:
   CL_ParseCommandString( msg );
   break;
  case 131:
   CL_ParseGamestate( msg );
   break;
  case 128:
   CL_ParseSnapshot( msg );
   break;
  case 132:
   CL_ParseDownload( msg );
   break;
  }
 }
}
