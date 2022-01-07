
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; TYPE_2__* gentity; } ;
typedef TYPE_3__ client_t ;
struct TYPE_13__ {scalar_t__ state; scalar_t__ restarting; int * configstrings; } ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {TYPE_3__* clients; } ;
struct TYPE_8__ {int svFlags; } ;
struct TYPE_9__ {TYPE_1__ r; } ;


 scalar_t__ CS_PRIMED ;
 int CS_SERVERINFO ;
 int Com_Error (int ,char*,int) ;
 int CopyString (char const*) ;
 int ERR_DROP ;
 int MAX_CONFIGSTRINGS ;
 int MAX_STRING_CHARS ;
 int Q_strncpyz (char*,char const*,int) ;
 scalar_t__ SS_GAME ;
 int SVF_NOSERVERINFO ;
 int SV_SendServerCommand (TYPE_3__*,char*,...) ;
 int Z_Free (int ) ;
 int strcmp (char const*,int ) ;
 int strlen (char const*) ;
 TYPE_6__ sv ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

void SV_SetConfigstring (int index, const char *val) {
 int len, i;
 int maxChunkSize = MAX_STRING_CHARS - 24;
 client_t *client;

 if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
  Com_Error (ERR_DROP, "SV_SetConfigstring: bad index %i\n", index);
 }

 if ( !val ) {
  val = "";
 }


 if ( !strcmp( val, sv.configstrings[ index ] ) ) {
  return;
 }


 Z_Free( sv.configstrings[index] );
 sv.configstrings[index] = CopyString( val );



 if ( sv.state == SS_GAME || sv.restarting ) {


  for (i = 0, client = svs.clients; i < sv_maxclients->integer ; i++, client++) {
   if ( client->state < CS_PRIMED ) {
    continue;
   }

   if ( index == CS_SERVERINFO && client->gentity && (client->gentity->r.svFlags & SVF_NOSERVERINFO) ) {
    continue;
   }

   len = strlen( val );
   if( len >= maxChunkSize ) {
    int sent = 0;
    int remaining = len;
    char *cmd;
    char buf[MAX_STRING_CHARS];

    while (remaining > 0 ) {
     if ( sent == 0 ) {
      cmd = "bcs0";
     }
     else if( remaining < maxChunkSize ) {
      cmd = "bcs2";
     }
     else {
      cmd = "bcs1";
     }
     Q_strncpyz( buf, &val[sent], maxChunkSize );

     SV_SendServerCommand( client, "%s %i \"%s\"\n", cmd, index, buf );

     sent += (maxChunkSize - 1);
     remaining -= (maxChunkSize - 1);
    }
   } else {

    SV_SendServerCommand( client, "cs %i \"%s\"\n", index, val );
   }
  }
 }
}
