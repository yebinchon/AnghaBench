
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int clientNum; } ;
struct TYPE_12__ {TYPE_3__ s; TYPE_2__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_9__ {int origin; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;


 int ClientSpawn (TYPE_4__*) ;
 int CopyToBodyQue (TYPE_4__*) ;
 int EV_PLAYER_TELEPORT_IN ;
 TYPE_4__* G_TempEntity (int ,int ) ;

void respawn( gentity_t *ent ) {
 gentity_t *tent;

 CopyToBodyQue (ent);
 ClientSpawn(ent);


 tent = G_TempEntity( ent->client->ps.origin, EV_PLAYER_TELEPORT_IN );
 tent->s.clientNum = ent->s.clientNum;
}
