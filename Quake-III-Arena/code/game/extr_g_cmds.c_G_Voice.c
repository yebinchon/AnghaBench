
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_14__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {int maxclients; } ;
struct TYPE_12__ {int netname; } ;
struct TYPE_13__ {TYPE_1__ pers; } ;


 scalar_t__ GT_TEAM ;
 int G_Printf (char*,int ,char const*) ;
 int G_VoiceTo (TYPE_3__*,TYPE_3__*,int,char const*,int ) ;
 int SAY_ALL ;
 int SAY_TEAM ;
 TYPE_7__ g_dedicated ;
 TYPE_3__* g_entities ;
 TYPE_5__ g_gametype ;
 TYPE_4__ level ;

void G_Voice( gentity_t *ent, gentity_t *target, int mode, const char *id, qboolean voiceonly ) {
 int j;
 gentity_t *other;

 if ( g_gametype.integer < GT_TEAM && mode == SAY_TEAM ) {
  mode = SAY_ALL;
 }

 if ( target ) {
  G_VoiceTo( ent, target, mode, id, voiceonly );
  return;
 }


 if ( g_dedicated.integer ) {
  G_Printf( "voice: %s %s\n", ent->client->pers.netname, id);
 }


 for (j = 0; j < level.maxclients; j++) {
  other = &g_entities[j];
  G_VoiceTo( ent, other, mode, id, voiceonly );
 }
}
