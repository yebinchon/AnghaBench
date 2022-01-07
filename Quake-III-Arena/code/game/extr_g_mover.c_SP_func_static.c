
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int currentOrigin; } ;
struct TYPE_8__ {int trBase; } ;
struct TYPE_9__ {int origin; TYPE_1__ pos; } ;
struct TYPE_11__ {TYPE_3__ r; TYPE_2__ s; int model; } ;
typedef TYPE_4__ gentity_t ;


 int InitMover (TYPE_4__*) ;
 int VectorCopy (int ,int ) ;
 int trap_SetBrushModel (TYPE_4__*,int ) ;

void SP_func_static( gentity_t *ent ) {
 trap_SetBrushModel( ent, ent->model );
 InitMover( ent );
 VectorCopy( ent->s.origin, ent->s.pos.trBase );
 VectorCopy( ent->s.origin, ent->r.currentOrigin );
}
