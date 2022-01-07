
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* origin; scalar_t__ radius; } ;
struct TYPE_11__ {TYPE_3__ e; } ;
typedef TYPE_4__ trRefEntity_t ;
struct TYPE_12__ {scalar_t__** bounds; } ;
typedef TYPE_5__ fog_t ;
struct TYPE_8__ {int rdflags; } ;
struct TYPE_13__ {TYPE_2__* world; TYPE_1__ refdef; } ;
struct TYPE_9__ {int numfogs; TYPE_5__* fogs; } ;


 int RDF_NOWORLDMODEL ;
 TYPE_6__ tr ;

int R_SpriteFogNum( trRefEntity_t *ent ) {
 int i, j;
 fog_t *fog;

 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return 0;
 }

 for ( i = 1 ; i < tr.world->numfogs ; i++ ) {
  fog = &tr.world->fogs[i];
  for ( j = 0 ; j < 3 ; j++ ) {
   if ( ent->e.origin[j] - ent->e.radius >= fog->bounds[1][j] ) {
    break;
   }
   if ( ent->e.origin[j] + ent->e.radius <= fog->bounds[0][j] ) {
    break;
   }
  }
  if ( j == 3 ) {
   return i;
  }
 }

 return 0;
}
