
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* anEdge; } ;
struct TYPE_14__ {struct TYPE_14__* next; struct TYPE_14__* prev; TYPE_2__* anEdge; } ;
struct TYPE_13__ {int Oprev; struct TYPE_13__* Onext; TYPE_9__* Org; struct TYPE_13__* Sym; int * Rface; int * Lface; struct TYPE_13__* Lnext; } ;
struct TYPE_12__ {int faceBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ TESSface ;


 int KillEdge (TYPE_1__*,TYPE_2__*) ;
 int KillVertex (TYPE_1__*,TYPE_9__*,int *) ;
 int Splice (TYPE_2__*,int ) ;
 int bucketFree (int ,TYPE_3__*) ;

void tessMeshZapFace( TESSmesh *mesh, TESSface *fZap )
{
 TESShalfEdge *eStart = fZap->anEdge;
 TESShalfEdge *e, *eNext, *eSym;
 TESSface *fPrev, *fNext;


 eNext = eStart->Lnext;
 do {
  e = eNext;
  eNext = e->Lnext;

  e->Lface = ((void*)0);
  if( e->Rface == ((void*)0) ) {


   if( e->Onext == e ) {
    KillVertex( mesh, e->Org, ((void*)0) );
   } else {

    e->Org->anEdge = e->Onext;
    Splice( e, e->Oprev );
   }
   eSym = e->Sym;
   if( eSym->Onext == eSym ) {
    KillVertex( mesh, eSym->Org, ((void*)0) );
   } else {

    eSym->Org->anEdge = eSym->Onext;
    Splice( eSym, eSym->Oprev );
   }
   KillEdge( mesh, e );
  }
 } while( e != eStart );


 fPrev = fZap->prev;
 fNext = fZap->next;
 fNext->prev = fPrev;
 fPrev->next = fNext;

 bucketFree( mesh->faceBucket, fZap );
}
