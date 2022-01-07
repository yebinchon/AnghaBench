
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int* sortedClients; TYPE_3__* clients; } ;
struct TYPE_6__ {int losses; int wins; } ;
struct TYPE_5__ {scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_2__ sess; TYPE_1__ pers; } ;


 scalar_t__ CON_CONNECTED ;
 int ClientUserinfoChanged (int) ;
 TYPE_4__ level ;

void AdjustTournamentScores( void ) {
 int clientNum;

 clientNum = level.sortedClients[0];
 if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
  level.clients[ clientNum ].sess.wins++;
  ClientUserinfoChanged( clientNum );
 }

 clientNum = level.sortedClients[1];
 if ( level.clients[ clientNum ].pers.connected == CON_CONNECTED ) {
  level.clients[ clientNum ].sess.losses++;
  ClientUserinfoChanged( clientNum );
 }

}
