
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ connected; int netname; } ;
struct TYPE_11__ {int sessionTeam; } ;
struct TYPE_10__ {size_t clientNum; } ;
struct TYPE_13__ {TYPE_4__ pers; TYPE_3__ sess; TYPE_2__ ps; } ;
typedef TYPE_5__ gclient_t ;
struct TYPE_9__ {int svFlags; } ;
struct TYPE_16__ {TYPE_1__ r; } ;
struct TYPE_15__ {int integer; } ;
struct TYPE_14__ {TYPE_5__* clients; } ;


 scalar_t__ CON_CONNECTED ;
 int EXEC_INSERT ;
 int Q_CleanStr (char*) ;
 int SVF_BOT ;
 TYPE_8__* g_entities ;
 TYPE_7__ g_maxclients ;
 TYPE_6__ level ;
 int qfalse ;
 int qtrue ;
 int strcpy (char*,int ) ;
 int trap_SendConsoleCommand (int ,int ) ;
 int va (char*,char*) ;

int G_RemoveRandomBot( int team ) {
 int i;
 char netname[36];
 gclient_t *cl;

 for ( i=0 ; i< g_maxclients.integer ; i++ ) {
  cl = level.clients + i;
  if ( cl->pers.connected != CON_CONNECTED ) {
   continue;
  }
  if ( !(g_entities[cl->ps.clientNum].r.svFlags & SVF_BOT) ) {
   continue;
  }
  if ( team >= 0 && cl->sess.sessionTeam != team ) {
   continue;
  }
  strcpy(netname, cl->pers.netname);
  Q_CleanStr(netname);
  trap_SendConsoleCommand( EXEC_INSERT, va("kick %s\n", netname) );
  return qtrue;
 }
 return qfalse;
}
