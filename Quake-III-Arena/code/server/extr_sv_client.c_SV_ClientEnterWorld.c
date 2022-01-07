
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int usercmd_t ;
struct TYPE_7__ {int number; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
typedef TYPE_2__ sharedEntity_t ;
struct TYPE_9__ {int deltaMessage; int lastUsercmd; int nextSnapshotTime; TYPE_2__* gentity; int state; int name; } ;
typedef TYPE_3__ client_t ;
struct TYPE_10__ {TYPE_3__* clients; int time; } ;


 int CS_ACTIVE ;
 int Com_DPrintf (char*,int ) ;
 int GAME_CLIENT_BEGIN ;
 TYPE_2__* SV_GentityNum (int) ;
 int VM_Call (int ,int ,int) ;
 int gvm ;
 TYPE_4__ svs ;

void SV_ClientEnterWorld( client_t *client, usercmd_t *cmd ) {
 int clientNum;
 sharedEntity_t *ent;

 Com_DPrintf( "Going from CS_PRIMED to CS_ACTIVE for %s\n", client->name );
 client->state = CS_ACTIVE;


 clientNum = client - svs.clients;
 ent = SV_GentityNum( clientNum );
 ent->s.number = clientNum;
 client->gentity = ent;

 client->deltaMessage = -1;
 client->nextSnapshotTime = svs.time;
 client->lastUsercmd = *cmd;


 VM_Call( gvm, GAME_CLIENT_BEGIN, client - svs.clients );
}
