
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


typedef int netname ;
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
 char* Info_ValueForKey (int ,char*) ;
 int Q_CleanStr (char*) ;
 int Q_stricmp (char*,int ) ;
 int SVF_BOT ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int * g_botInfos ;
 TYPE_8__* g_entities ;
 TYPE_7__ g_maxclients ;
 int g_numBots ;
 TYPE_6__ level ;
 int random () ;
 int strncpy (char*,char*,int) ;
 float trap_Cvar_VariableValue (char*) ;
 int trap_SendConsoleCommand (int ,int ) ;
 int va (char*,char*,float,char*,int ) ;

void G_AddRandomBot( int team ) {
 int i, n, num;
 float skill;
 char *value, netname[36], *teamstr;
 gclient_t *cl;

 num = 0;
 for ( n = 0; n < g_numBots ; n++ ) {
  value = Info_ValueForKey( g_botInfos[n], "name" );

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
   if ( !Q_stricmp( value, cl->pers.netname ) ) {
    break;
   }
  }
  if (i >= g_maxclients.integer) {
   num++;
  }
 }
 num = random() * num;
 for ( n = 0; n < g_numBots ; n++ ) {
  value = Info_ValueForKey( g_botInfos[n], "name" );

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
   if ( !Q_stricmp( value, cl->pers.netname ) ) {
    break;
   }
  }
  if (i >= g_maxclients.integer) {
   num--;
   if (num <= 0) {
    skill = trap_Cvar_VariableValue( "g_spSkill" );
    if (team == TEAM_RED) teamstr = "red";
    else if (team == TEAM_BLUE) teamstr = "blue";
    else teamstr = "";
    strncpy(netname, value, sizeof(netname)-1);
    netname[sizeof(netname)-1] = '\0';
    Q_CleanStr(netname);
    trap_SendConsoleCommand( EXEC_INSERT, va("addbot %s %f %s %i\n", netname, skill, teamstr, 0) );
    return;
   }
  }
 }
}
