
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int maxs; int mins; } ;
struct TYPE_13__ {TYPE_3__* client; TYPE_1__ r; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_11__ {int origin; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;


 int DAMAGE_NO_PROTECTION ;
 int G_Damage (TYPE_4__*,TYPE_4__*,TYPE_4__*,int *,int *,int,int ,int ) ;
 int MAX_GENTITIES ;
 int MOD_TELEFRAG ;
 int VectorAdd (int ,int ,int ) ;
 TYPE_4__* g_entities ;
 int trap_EntitiesInBox (int ,int ,int*,int) ;

void G_KillBox (gentity_t *ent) {
 int i, num;
 int touch[MAX_GENTITIES];
 gentity_t *hit;
 vec3_t mins, maxs;

 VectorAdd( ent->client->ps.origin, ent->r.mins, mins );
 VectorAdd( ent->client->ps.origin, ent->r.maxs, maxs );
 num = trap_EntitiesInBox( mins, maxs, touch, MAX_GENTITIES );

 for (i=0 ; i<num ; i++) {
  hit = &g_entities[touch[i]];
  if ( !hit->client ) {
   continue;
  }


  G_Damage ( hit, ent, ent, ((void*)0), ((void*)0),
   100000, DAMAGE_NO_PROTECTION, MOD_TELEFRAG);
 }

}
