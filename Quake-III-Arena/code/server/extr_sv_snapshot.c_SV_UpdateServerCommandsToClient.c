
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_3__ {int reliableAcknowledge; int reliableSequence; int reliableSent; int * reliableCommands; } ;
typedef TYPE_1__ client_t ;


 int MAX_RELIABLE_COMMANDS ;
 int MSG_WriteByte (int *,int ) ;
 int MSG_WriteLong (int *,int) ;
 int MSG_WriteString (int *,int ) ;
 int svc_serverCommand ;

void SV_UpdateServerCommandsToClient( client_t *client, msg_t *msg ) {
 int i;


 for ( i = client->reliableAcknowledge + 1 ; i <= client->reliableSequence ; i++ ) {
  MSG_WriteByte( msg, svc_serverCommand );
  MSG_WriteLong( msg, i );
  MSG_WriteString( msg, client->reliableCommands[ i & (MAX_RELIABLE_COMMANDS-1) ] );
 }
 client->reliableSent = client->reliableSequence;
}
