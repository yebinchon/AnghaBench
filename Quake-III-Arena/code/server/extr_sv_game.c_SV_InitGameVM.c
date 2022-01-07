
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {int entityParsePoint; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int time; TYPE_1__* clients; } ;
struct TYPE_5__ {int * gentity; } ;


 int CM_EntityString () ;
 int Com_Milliseconds () ;
 int GAME_INIT ;
 int VM_Call (int ,int ,int ,int ,int ) ;
 int gvm ;
 TYPE_4__ sv ;
 TYPE_3__* sv_maxclients ;
 TYPE_2__ svs ;

__attribute__((used)) static void SV_InitGameVM( qboolean restart ) {
 int i;


 sv.entityParsePoint = CM_EntityString();





 for ( i = 0 ; i < sv_maxclients->integer ; i++ ) {
  svs.clients[i].gentity = ((void*)0);
 }



 VM_Call( gvm, GAME_INIT, svs.time, Com_Milliseconds(), restart );
}
