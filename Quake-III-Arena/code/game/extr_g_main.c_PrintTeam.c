
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;
struct TYPE_4__ {int sessionTeam; } ;
struct TYPE_5__ {TYPE_1__ sess; } ;


 TYPE_3__ level ;
 int trap_SendServerCommand (int,char*) ;

void PrintTeam(int team, char *message) {
 int i;

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if (level.clients[i].sess.sessionTeam != team)
   continue;
  trap_SendServerCommand( i, message );
 }
}
