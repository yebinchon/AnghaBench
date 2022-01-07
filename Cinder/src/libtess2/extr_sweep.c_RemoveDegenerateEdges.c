
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* Sym; struct TYPE_10__* Lnext; int Dst; int Org; } ;
struct TYPE_11__ {TYPE_2__ eHead; } ;
struct TYPE_9__ {int env; TYPE_3__* mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;


 int SpliceMergeVertices (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ VertEq (int ,int ) ;
 int longjmp (int ,int) ;
 int tessMeshDelete (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void RemoveDegenerateEdges( TESStesselator *tess )



{
 TESShalfEdge *e, *eNext, *eLnext;
 TESShalfEdge *eHead = &tess->mesh->eHead;


 for( e = eHead->next; e != eHead; e = eNext ) {
  eNext = e->next;
  eLnext = e->Lnext;

  if( VertEq( e->Org, e->Dst ) && e->Lnext->Lnext != e ) {


   SpliceMergeVertices( tess, eLnext, e );
   if ( !tessMeshDelete( tess->mesh, e ) ) longjmp(tess->env,1);
   e = eLnext;
   eLnext = e->Lnext;
  }
  if( eLnext->Lnext == e ) {


   if( eLnext != e ) {
    if( eLnext == eNext || eLnext == eNext->Sym ) { eNext = eNext->next; }
    if ( !tessMeshDelete( tess->mesh, eLnext ) ) longjmp(tess->env,1);
   }
   if( e == eNext || e == eNext->Sym ) { eNext = eNext->next; }
   if ( !tessMeshDelete( tess->mesh, e ) ) longjmp(tess->env,1);
  }
 }
}
