
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int traceWork_t ;
struct TYPE_5__ {int origin; struct TYPE_5__* next; } ;
typedef TYPE_1__ light_t ;
struct TYPE_6__ {scalar_t__* color; scalar_t__* dir; } ;
typedef TYPE_2__ contribution_t ;


 int ColorToBytes (scalar_t__*,scalar_t__*) ;
 float DotProduct (scalar_t__*,scalar_t__*) ;
 int LightContributionToPoint (TYPE_1__*,scalar_t__*,scalar_t__*,int *) ;
 int MAX_CONTRIBUTIONS ;
 int NormalToLatLong (scalar_t__*,scalar_t__*) ;
 scalar_t__ PointInSolid (scalar_t__*) ;
 int SunToPoint (scalar_t__*,int *,scalar_t__*) ;
 int VectorClear (scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 float VectorLength (scalar_t__*) ;
 int VectorMA (scalar_t__*,double,scalar_t__*,scalar_t__*) ;
 int VectorNormalize (scalar_t__*,scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 scalar_t__* ambientColor ;
 int* gridBounds ;
 scalar_t__* gridData ;
 scalar_t__* gridMins ;
 int* gridSize ;
 TYPE_1__* lights ;
 scalar_t__* sunDirection ;

void TraceGrid( int num ) {
 int x, y, z;
 vec3_t origin;
 light_t *light;
 vec3_t color;
 int mod;
 vec3_t directedColor;
 vec3_t summedDir;
 contribution_t contributions[MAX_CONTRIBUTIONS];
 int numCon;
 int i;
 traceWork_t tw;
 float addSize;

 mod = num;
 z = mod / ( gridBounds[0] * gridBounds[1] );
 mod -= z * ( gridBounds[0] * gridBounds[1] );

 y = mod / gridBounds[0];
 mod -= y * gridBounds[0];

 x = mod;

 origin[0] = gridMins[0] + x * gridSize[0];
 origin[1] = gridMins[1] + y * gridSize[1];
 origin[2] = gridMins[2] + z * gridSize[2];

 if ( PointInSolid( origin ) ) {
  vec3_t baseOrigin;
  int step;

  VectorCopy( origin, baseOrigin );


  for ( step = 9 ; step <= 18 ; step += 9 ) {
   for ( i = 0 ; i < 8 ; i++ ) {
    VectorCopy( baseOrigin, origin );
    if ( i & 1 ) {
     origin[0] += step;
    } else {
     origin[0] -= step;
    }
    if ( i & 2 ) {
     origin[1] += step;
    } else {
     origin[1] -= step;
    }
    if ( i & 4 ) {
     origin[2] += step;
    } else {
     origin[2] -= step;
    }

    if ( !PointInSolid( origin ) ) {
     break;
    }
   }
   if ( i != 8 ) {
    break;
   }
  }
  if ( step > 18 ) {

   for ( i = 0 ; i < 8 ; i++ ) {
    gridData[ num*8 + i ] = 0;
   }
   return;
  }
 }

 VectorClear( summedDir );






 numCon = 0;
 for ( light = lights ; light ; light = light->next ) {
  vec3_t add;
  vec3_t dir;
  float addSize;

  if ( !LightContributionToPoint( light, origin, add, &tw ) ) {
   continue;
  }

  VectorSubtract( light->origin, origin, dir );
  VectorNormalize( dir, dir );

  VectorCopy( add, contributions[numCon].color );
  VectorCopy( dir, contributions[numCon].dir );
  numCon++;

  addSize = VectorLength( add );
  VectorMA( summedDir, addSize, dir, summedDir );

  if ( numCon == MAX_CONTRIBUTIONS-1 ) {
   break;
  }
 }




 SunToPoint( origin, &tw, color );
 addSize = VectorLength( color );
 if ( addSize > 0 ) {
  VectorCopy( color, contributions[numCon].color );
  VectorCopy( sunDirection, contributions[numCon].dir );
  VectorMA( summedDir, addSize, sunDirection, summedDir );
  numCon++;
 }




 VectorNormalize( summedDir, summedDir );
 VectorCopy( ambientColor, color );
 VectorClear( directedColor );

 for ( i = 0 ; i < numCon ; i++ ) {
  float d;

  d = DotProduct( contributions[i].dir, summedDir );
  if ( d < 0 ) {
   d = 0;
  }

  VectorMA( directedColor, d, contributions[i].color, directedColor );


  d = 0.25 * ( 1.0 - d );
  VectorMA( color, d, contributions[i].color, color );
 }


 VectorMA( color, 0.25, directedColor, color );




 ColorToBytes( color, gridData + num*8 );
 ColorToBytes( directedColor, gridData + num*8 + 3 );

 VectorNormalize( summedDir, summedDir );
 NormalToLatLong( summedDir, gridData + num*8 + 6);
}
