
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int origin; } ;
struct TYPE_5__ {int use; TYPE_1__ s; int classname; int targetname; } ;
typedef TYPE_2__ gentity_t ;


 int G_Printf (char*,int ,int ) ;
 int target_teleporter_use ;
 int vtos (int ) ;

void SP_target_teleporter( gentity_t *self ) {
 if (!self->targetname)
  G_Printf("untargeted %s at %s\n", self->classname, vtos(self->s.origin));

 self->use = target_teleporter_use;
}
