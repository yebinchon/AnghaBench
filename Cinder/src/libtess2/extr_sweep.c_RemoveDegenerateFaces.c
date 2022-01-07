
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_3__* anEdge; struct TYPE_12__* next; } ;
struct TYPE_11__ {int Onext; struct TYPE_11__* Lnext; } ;
struct TYPE_10__ {TYPE_4__ fHead; } ;
struct TYPE_9__ {int mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESSmesh ;
typedef TYPE_3__ TESShalfEdge ;
typedef TYPE_4__ TESSface ;


 int AddWinding (int ,TYPE_3__*) ;
 int assert (int) ;
 int tessMeshDelete (int ,TYPE_3__*) ;

__attribute__((used)) static int RemoveDegenerateFaces( TESStesselator *tess, TESSmesh *mesh )
{
 TESSface *f, *fNext;
 TESShalfEdge *e;


 for( f = mesh->fHead.next; f != &mesh->fHead; f = fNext ) {
  fNext = f->next;
  e = f->anEdge;
  assert( e->Lnext != e );

  if( e->Lnext->Lnext == e ) {

   AddWinding( e->Onext, e );
   if ( !tessMeshDelete( tess->mesh, e ) ) return 0;
  }
 }
 return 1;
}
