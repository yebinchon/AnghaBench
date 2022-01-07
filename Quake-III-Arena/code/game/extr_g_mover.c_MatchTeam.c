
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* teamchain; } ;
typedef TYPE_1__ gentity_t ;


 int SetMoverState (TYPE_1__*,int,int) ;

void MatchTeam( gentity_t *teamLeader, int moverState, int time ) {
 gentity_t *slave;

 for ( slave = teamLeader ; slave ; slave = slave->teamchain ) {
  SetMoverState( slave, moverState, time );
 }
}
