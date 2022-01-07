
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int origin; } ;
struct TYPE_7__ {TYPE_1__ s; scalar_t__ nextthink; int think; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_8__ {scalar_t__ time; } ;


 int G_SetOrigin (TYPE_2__*,int ) ;
 TYPE_3__ level ;
 int target_location_linkup ;

void SP_target_location( gentity_t *self ){
 self->think = target_location_linkup;
 self->nextthink = level.time + 200;

 G_SetOrigin( self, self->s.origin );
}
