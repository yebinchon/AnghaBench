
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int svFlags; } ;
struct TYPE_14__ {TYPE_4__* client; TYPE_1__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {int time; } ;
struct TYPE_11__ {int serverTime; } ;
struct TYPE_12__ {TYPE_2__ cmd; } ;
struct TYPE_13__ {TYPE_3__ pers; } ;


 int ClientThink_real (TYPE_5__*) ;
 int SVF_BOT ;
 TYPE_7__ g_synchronousClients ;
 TYPE_6__ level ;

void G_RunClient( gentity_t *ent ) {
 if ( !(ent->r.svFlags & SVF_BOT) && !g_synchronousClients.integer ) {
  return;
 }
 ent->client->pers.cmd.serverTime = level.time;
 ClientThink_real( ent );
}
