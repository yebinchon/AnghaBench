
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {void* shaderNum; int planeNum; } ;
typedef TYPE_4__ dbrushside_t ;
struct TYPE_14__ {size_t firstSide; scalar_t__ numSides; void* shaderNum; } ;
typedef TYPE_5__ dbrush_t ;
struct TYPE_15__ {size_t outputNumber; int numsides; TYPE_3__* sides; TYPE_1__* contentShader; struct TYPE_15__* next; } ;
typedef TYPE_6__ bspbrush_t ;
struct TYPE_12__ {TYPE_2__* shaderInfo; int planenum; scalar_t__ backSide; } ;
struct TYPE_11__ {int shader; } ;
struct TYPE_10__ {int shader; } ;


 void* EmitShader (int ) ;
 int Error (char*) ;
 size_t MAX_MAP_BRUSHES ;
 size_t MAX_MAP_BRUSHSIDES ;
 TYPE_5__* dbrushes ;
 TYPE_4__* dbrushsides ;
 size_t numbrushes ;
 size_t numbrushsides ;

void EmitBrushes ( bspbrush_t *brushes ) {
 int j;
 dbrush_t *db;
 bspbrush_t *b;
 dbrushside_t *cp;

 for ( b = brushes ; b ; b = b->next ) {
  if ( numbrushes == MAX_MAP_BRUSHES ) {
   Error( "MAX_MAP_BRUSHES" );
  }
  b->outputNumber = numbrushes;
  db = &dbrushes[numbrushes];
  numbrushes++;

  db->shaderNum = EmitShader( b->contentShader->shader );
  db->firstSide = numbrushsides;


  db->numSides = 0;
  for ( j=0 ; j<b->numsides ; j++ ) {
   if ( b->sides[j].backSide ) {
    continue;
   }
   if ( numbrushsides == MAX_MAP_BRUSHSIDES ) {
    Error( "MAX_MAP_BRUSHSIDES ");
   }
   cp = &dbrushsides[numbrushsides];
   db->numSides++;
   numbrushsides++;
   cp->planeNum = b->sides[j].planenum;
   cp->shaderNum = EmitShader( b->sides[j].shaderInfo->shader );
  }
 }

}
