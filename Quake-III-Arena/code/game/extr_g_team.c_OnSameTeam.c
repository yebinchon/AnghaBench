
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_9__ {TYPE_2__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {scalar_t__ sessionTeam; } ;
struct TYPE_8__ {TYPE_1__ sess; } ;


 scalar_t__ GT_TEAM ;
 TYPE_4__ g_gametype ;
 int qfalse ;
 int qtrue ;

qboolean OnSameTeam( gentity_t *ent1, gentity_t *ent2 ) {
 if ( !ent1->client || !ent2->client ) {
  return qfalse;
 }

 if ( g_gametype.integer < GT_TEAM ) {
  return qfalse;
 }

 if ( ent1->client->sess.sessionTeam == ent2->client->sess.sessionTeam ) {
  return qtrue;
 }

 return qfalse;
}
