
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int svFlags; int contents; } ;
struct TYPE_6__ {int angles; } ;
struct TYPE_8__ {TYPE_2__ r; int model; int movedir; TYPE_1__ s; } ;
typedef TYPE_3__ gentity_t ;


 int CONTENTS_TRIGGER ;
 int G_SetMovedir (int ,int ) ;
 int SVF_NOCLIENT ;
 int VectorCompare (int ,int ) ;
 int trap_SetBrushModel (TYPE_3__*,int ) ;
 int vec3_origin ;

void InitTrigger( gentity_t *self ) {
 if (!VectorCompare (self->s.angles, vec3_origin))
  G_SetMovedir (self->s.angles, self->movedir);

 trap_SetBrushModel( self, self->model );
 self->r.contents = CONTENTS_TRIGGER;
 self->r.svFlags = SVF_NOCLIENT;
}
