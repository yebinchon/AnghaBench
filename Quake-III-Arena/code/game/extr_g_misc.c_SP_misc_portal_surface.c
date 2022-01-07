
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int origin2; int origin; int eType; } ;
struct TYPE_7__ {int svFlags; int maxs; int mins; } ;
struct TYPE_9__ {scalar_t__ nextthink; int think; TYPE_2__ s; int target; TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_10__ {scalar_t__ time; } ;


 int ET_PORTAL ;
 int SVF_PORTAL ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ level ;
 int locateCamera ;
 int trap_LinkEntity (TYPE_3__*) ;

void SP_misc_portal_surface(gentity_t *ent) {
 VectorClear( ent->r.mins );
 VectorClear( ent->r.maxs );
 trap_LinkEntity (ent);

 ent->r.svFlags = SVF_PORTAL;
 ent->s.eType = ET_PORTAL;

 if ( !ent->target ) {
  VectorCopy( ent->s.origin, ent->s.origin2 );
 } else {
  ent->think = locateCamera;
  ent->nextthink = level.time + 100;
 }
}
