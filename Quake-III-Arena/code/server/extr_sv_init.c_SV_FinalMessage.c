
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_1__ remoteAddress; } ;
struct TYPE_10__ {scalar_t__ state; int nextSnapshotTime; TYPE_2__ netchan; } ;
typedef TYPE_3__ client_t ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {TYPE_3__* clients; } ;


 scalar_t__ CS_CONNECTED ;
 scalar_t__ NA_LOOPBACK ;
 int SV_SendClientSnapshot (TYPE_3__*) ;
 int SV_SendServerCommand (TYPE_3__*,char*,...) ;
 TYPE_5__* sv_maxclients ;
 TYPE_4__ svs ;

void SV_FinalMessage( char *message ) {
 int i, j;
 client_t *cl;


 for ( j = 0 ; j < 2 ; j++ ) {
  for (i=0, cl = svs.clients ; i < sv_maxclients->integer ; i++, cl++) {
   if (cl->state >= CS_CONNECTED) {

    if ( cl->netchan.remoteAddress.type != NA_LOOPBACK ) {
     SV_SendServerCommand( cl, "print \"%s\"", message );
     SV_SendServerCommand( cl, "disconnect" );
    }

    cl->nextSnapshotTime = -1;
    SV_SendClientSnapshot( cl );
   }
  }
 }
}
