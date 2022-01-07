
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_12__ {int svFlags; } ;
struct TYPE_13__ {TYPE_3__ r; TYPE_2__* client; int inuse; } ;
typedef TYPE_4__ gentity_t ;
typedef int arg ;
struct TYPE_14__ {int maxclients; } ;
struct TYPE_10__ {int netname; } ;
struct TYPE_11__ {TYPE_1__ pers; } ;


 char* ConcatArgs (int) ;
 int G_LogPrintf (char*,int ,int ,char*) ;
 int G_Voice (TYPE_4__*,TYPE_4__*,int ,char*,int ) ;
 int MAX_TOKEN_CHARS ;
 int SAY_TELL ;
 int SVF_BOT ;
 int atoi (char*) ;
 TYPE_4__* g_entities ;
 TYPE_5__ level ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;

__attribute__((used)) static void Cmd_VoiceTell_f( gentity_t *ent, qboolean voiceonly ) {
 int targetNum;
 gentity_t *target;
 char *id;
 char arg[MAX_TOKEN_CHARS];

 if ( trap_Argc () < 2 ) {
  return;
 }

 trap_Argv( 1, arg, sizeof( arg ) );
 targetNum = atoi( arg );
 if ( targetNum < 0 || targetNum >= level.maxclients ) {
  return;
 }

 target = &g_entities[targetNum];
 if ( !target || !target->inuse || !target->client ) {
  return;
 }

 id = ConcatArgs( 2 );

 G_LogPrintf( "vtell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, id );
 G_Voice( ent, target, SAY_TELL, id, voiceonly );


 if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
  G_Voice( ent, ent, SAY_TELL, id, voiceonly );
 }
}
