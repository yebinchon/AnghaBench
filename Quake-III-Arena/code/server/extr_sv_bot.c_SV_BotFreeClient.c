
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* gentity; scalar_t__* name; int state; } ;
typedef TYPE_3__ client_t ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {TYPE_3__* clients; } ;
struct TYPE_6__ {int svFlags; } ;
struct TYPE_7__ {TYPE_1__ r; } ;


 int CS_FREE ;
 int Com_Error (int ,char*,int) ;
 int ERR_DROP ;
 int SVF_BOT ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

void SV_BotFreeClient( int clientNum ) {
 client_t *cl;

 if ( clientNum < 0 || clientNum >= sv_maxclients->integer ) {
  Com_Error( ERR_DROP, "SV_BotFreeClient: bad clientNum: %i", clientNum );
 }
 cl = &svs.clients[clientNum];
 cl->state = CS_FREE;
 cl->name[0] = 0;
 if ( cl->gentity ) {
  cl->gentity->r.svFlags &= ~SVF_BOT;
 }
}
