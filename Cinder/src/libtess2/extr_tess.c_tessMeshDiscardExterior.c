
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inside; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__ fHead; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESSface ;


 int tessMeshZapFace (TYPE_1__*,TYPE_2__*) ;

void tessMeshDiscardExterior( TESSmesh *mesh )
{
 TESSface *f, *next;


 for( f = mesh->fHead.next; f != &mesh->fHead; f = next ) {

  next = f->next;
  if( ! f->inside ) {
   tessMeshZapFace( mesh, f );
  }
 }
}
