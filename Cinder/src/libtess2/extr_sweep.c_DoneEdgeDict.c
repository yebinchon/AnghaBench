
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fixUpperEdge; scalar_t__ windingNumber; int sentinel; } ;
struct TYPE_6__ {int dict; int alloc; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ ActiveRegion ;


 int DeleteRegion (TYPE_1__*,TYPE_2__*) ;
 int assert (int) ;
 int dictDeleteDict (int *,int ) ;
 scalar_t__ dictKey (int ) ;
 int dictMin (int ) ;

__attribute__((used)) static void DoneEdgeDict( TESStesselator *tess )
{
 ActiveRegion *reg;
 int fixedEdges = 0;

 while( (reg = (ActiveRegion *)dictKey( dictMin( tess->dict ))) != ((void*)0) ) {





  if( ! reg->sentinel ) {
   assert( reg->fixUpperEdge );
   assert( ++fixedEdges == 1 );
  }
  assert( reg->windingNumber == 0 );
  DeleteRegion( tess, reg );

 }
 dictDeleteDict( &tess->alloc, tess->dict );
}
