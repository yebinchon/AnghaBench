
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int numVerts; TYPE_4__* verts; } ;
typedef TYPE_1__ mapDrawSurface_t ;
struct TYPE_10__ {float intercept; struct TYPE_10__* prev; struct TYPE_10__* next; int xyz; } ;
typedef TYPE_2__ edgePoint_t ;
struct TYPE_11__ {TYPE_2__ chain; int dir; int origin; } ;
typedef TYPE_3__ edgeLine_t ;
struct TYPE_12__ {float* st; int normal; int xyz; scalar_t__* lightmap; } ;
typedef TYPE_4__ drawVert_t ;


 float DotProduct (int ,int ) ;
 int Error (char*) ;
 int MAX_SURFACE_VERTS ;
 float ON_EPSILON ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int c_addedVerts ;
 int c_cant ;
 int c_natural ;
 int c_rotate ;
 int c_totalVerts ;
 TYPE_3__* edgeLines ;
 void* malloc (int) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;

void FixSurfaceJunctions( mapDrawSurface_t *ds ) {
 int i, j, k;
 edgeLine_t *e;
 edgePoint_t *p;
 int originalVerts;
 int counts[MAX_SURFACE_VERTS];
 int originals[MAX_SURFACE_VERTS];
 int firstVert[MAX_SURFACE_VERTS];
 drawVert_t verts[MAX_SURFACE_VERTS], *v1, *v2;
 int numVerts;
 float start, end, frac;
 vec3_t delta;

 originalVerts = ds->numVerts;

 numVerts = 0;
 for ( i = 0 ; i < ds->numVerts ; i++ ) {
  counts[i] = 0;
  firstVert[i] = numVerts;


  if ( numVerts == MAX_SURFACE_VERTS ) {
   Error( "MAX_SURFACE_VERTS" );
  }
  verts[numVerts] = ds->verts[i];
  originals[numVerts] = i;
  numVerts++;


  v1 = &ds->verts[i];
  v2 = &ds->verts[ (i+1) % ds->numVerts ];

  j = (int)ds->verts[i].lightmap[0];
  if ( j == -1 ) {
   continue;
  }
  e = &edgeLines[ j ];

  VectorSubtract( v1->xyz, e->origin, delta );
  start = DotProduct( delta, e->dir );

  VectorSubtract( v2->xyz, e->origin, delta );
  end = DotProduct( delta, e->dir );


  if ( start < end ) {
   p = e->chain.next;
  } else {
   p = e->chain.prev;
  }

  for ( ; p != &e->chain ; ) {
   if ( start < end ) {
    if ( p->intercept > end - ON_EPSILON ) {
     break;
    }
   } else {
    if ( p->intercept < end + ON_EPSILON ) {
     break;
    }
   }

   if (
    ( start < end && p->intercept > start + ON_EPSILON ) ||
    ( start > end && p->intercept < start - ON_EPSILON ) ) {

    if ( numVerts == MAX_SURFACE_VERTS ) {
     Error( "MAX_SURFACE_VERTS" );
    }


    VectorCopy( p->xyz, verts[ numVerts ].xyz );


    VectorCopy( v1->normal, verts[ numVerts ].normal );


    frac = ( p->intercept - start ) / ( end - start );
    for ( j = 0 ; j < 2 ; j++ ) {
     verts[ numVerts ].st[j] = v1->st[j] +
      frac * ( v2->st[j] - v1->st[j] );
    }
    originals[numVerts] = i;
    numVerts++;
    counts[i]++;
   }

   if ( start < end ) {
    p = p->next;
   } else {
    p = p->prev;
   }
  }
 }

 c_addedVerts += numVerts - ds->numVerts;
 c_totalVerts += numVerts;







 for ( i = 0 ; i < numVerts ; i++ ) {
  if ( originals[ (i+1) % numVerts ] == originals[ i ] ) {
   continue;
  }
  j = (i + numVerts - 1 ) % numVerts;
  k = (i + numVerts - 2 ) % numVerts;
  if ( originals[ j ] == originals[ k ] ) {
   continue;
  }
  break;
 }

 if ( i == 0 ) {

  c_natural++;

  ds->numVerts = numVerts;
  ds->verts = malloc( numVerts * sizeof( *ds->verts ) );
  memcpy( ds->verts, verts, numVerts * sizeof( *ds->verts ) );

  return;
 }
 if ( i == numVerts ) {

  c_cant++;
 } else {

  c_rotate++;

 }

 ds->numVerts = numVerts;
 ds->verts = malloc( numVerts * sizeof( *ds->verts ) );

 for ( j = 0 ; j < ds->numVerts ; j++ ) {
  ds->verts[j] = verts[ ( j + i ) % ds->numVerts ];
 }
}
