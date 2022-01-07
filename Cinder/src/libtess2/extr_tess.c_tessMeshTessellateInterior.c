
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ inside; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__ fHead; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESSface ;


 int tessMeshTessellateMonoRegion (TYPE_1__*,TYPE_2__*) ;

int tessMeshTessellateInterior( TESSmesh *mesh )
{
 TESSface *f, *next;


 for( f = mesh->fHead.next; f != &mesh->fHead; f = next ) {

  next = f->next;
  if( f->inside ) {
   if ( !tessMeshTessellateMonoRegion( mesh, f ) ) return 0;
  }
 }

 return 1;
}
