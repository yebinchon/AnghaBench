
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int currentOrigin; } ;
struct TYPE_7__ {int trDelta; scalar_t__ trDuration; scalar_t__ trTime; int trType; int trBase; } ;
struct TYPE_8__ {TYPE_2__ pos; } ;
struct TYPE_9__ {TYPE_1__ r; TYPE_3__ s; } ;
typedef TYPE_4__ gentity_t ;


 int TR_STATIONARY ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;

void G_SetOrigin( gentity_t *ent, vec3_t origin ) {
 VectorCopy( origin, ent->s.pos.trBase );
 ent->s.pos.trType = TR_STATIONARY;
 ent->s.pos.trTime = 0;
 ent->s.pos.trDuration = 0;
 VectorClear( ent->s.pos.trDelta );

 VectorCopy( origin, ent->r.currentOrigin );
}
