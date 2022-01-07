
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ trType; } ;
struct TYPE_8__ {scalar_t__ trType; } ;
struct TYPE_10__ {TYPE_2__ apos; TYPE_1__ pos; } ;
struct TYPE_11__ {int flags; TYPE_3__ s; } ;
typedef TYPE_4__ gentity_t ;


 int FL_TEAMSLAVE ;
 int G_MoverTeam (TYPE_4__*) ;
 int G_RunThink (TYPE_4__*) ;
 scalar_t__ TR_STATIONARY ;

void G_RunMover( gentity_t *ent ) {


 if ( ent->flags & FL_TEAMSLAVE ) {
  return;
 }


 if ( ent->s.pos.trType != TR_STATIONARY || ent->s.apos.trType != TR_STATIONARY ) {
  G_MoverTeam( ent );
 }


 G_RunThink( ent );
}
