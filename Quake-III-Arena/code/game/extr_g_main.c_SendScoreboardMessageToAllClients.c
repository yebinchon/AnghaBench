
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;
struct TYPE_4__ {scalar_t__ connected; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;


 scalar_t__ CON_CONNECTED ;
 int DeathmatchScoreboardMessage (scalar_t__) ;
 scalar_t__ g_entities ;
 TYPE_3__ level ;

void SendScoreboardMessageToAllClients( void ) {
 int i;

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if ( level.clients[ i ].pers.connected == CON_CONNECTED ) {
   DeathmatchScoreboardMessage( g_entities + i );
  }
 }
}
