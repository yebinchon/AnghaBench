
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gentity_t ;
struct TYPE_4__ {scalar_t__ connected; char* netname; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
typedef TYPE_2__ gclient_t ;
struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;


 scalar_t__ CON_CONNECTED ;
 int MAX_STRING_CHARS ;
 int SanitizeString (char*,char*) ;
 int atoi (char*) ;
 int g_entities ;
 TYPE_3__ level ;
 int strcmp (char*,char*) ;
 int trap_SendServerCommand (int *,int ) ;
 int va (char*,...) ;

int ClientNumberFromString( gentity_t *to, char *s ) {
 gclient_t *cl;
 int idnum;
 char s2[MAX_STRING_CHARS];
 char n2[MAX_STRING_CHARS];


 if (s[0] >= '0' && s[0] <= '9') {
  idnum = atoi( s );
  if ( idnum < 0 || idnum >= level.maxclients ) {
   trap_SendServerCommand( to-g_entities, va("print \"Bad client slot: %i\n\"", idnum));
   return -1;
  }

  cl = &level.clients[idnum];
  if ( cl->pers.connected != CON_CONNECTED ) {
   trap_SendServerCommand( to-g_entities, va("print \"Client %i is not active\n\"", idnum));
   return -1;
  }
  return idnum;
 }


 SanitizeString( s, s2 );
 for ( idnum=0,cl=level.clients ; idnum < level.maxclients ; idnum++,cl++ ) {
  if ( cl->pers.connected != CON_CONNECTED ) {
   continue;
  }
  SanitizeString( cl->pers.netname, n2 );
  if ( !strcmp( n2, s2 ) ) {
   return idnum;
  }
 }

 trap_SendServerCommand( to-g_entities, va("print \"User %s is not on the server\n\"", s));
 return -1;
}
