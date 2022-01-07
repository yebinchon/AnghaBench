
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {int maxs; int mins; struct TYPE_5__* next; } ;
typedef TYPE_1__ bspbrush_t ;
struct TYPE_6__ {TYPE_1__* brushes; } ;


 int AddPointToBounds (int ,scalar_t__*,scalar_t__*) ;
 int ClearBounds (scalar_t__*,scalar_t__*) ;
 int Error (char*,scalar_t__,scalar_t__) ;
 int GetVectorForKey (TYPE_2__*,char*,scalar_t__*) ;
 char* ValueForKey (TYPE_2__*,char*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ floor (scalar_t__) ;
 TYPE_2__* mapent ;

void CalcTerrainSize( vec3_t mins, vec3_t maxs, vec3_t size ) {
 bspbrush_t *brush;
 int i;
 const char *key;


 ClearBounds( mins, maxs );
 for( brush = mapent->brushes; brush != ((void*)0); brush = brush->next ) {
  AddPointToBounds( brush->mins, mins, maxs );
  AddPointToBounds( brush->maxs, mins, maxs );
 }

 key = ValueForKey( mapent, "min" );
 if ( key[ 0 ] ) {
  GetVectorForKey( mapent, "min", mins );
 }

 key = ValueForKey( mapent, "max" );
 if ( key[ 0 ] ) {
  GetVectorForKey( mapent, "max", maxs );
 }

 for( i = 0; i < 3; i++ ) {
  mins[ i ] = floor( mins[ i ] + 0.1 );
  maxs[ i ] = floor( maxs[ i ] + 0.1 );
 }

 VectorSubtract( maxs, mins, size );

 if ( ( size[ 0 ] <= 0 ) || ( size[ 1 ] <= 0 ) ) {
  Error ("CalcTerrainSize: Invalid terrain size: %fx%f", size[ 0 ], size[ 1 ] );
 }
}
