
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_10__ {int* normal; int dist; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_11__ {int numsides; TYPE_1__* sides; struct TYPE_11__* next; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_12__ {TYPE_3__* brushes; } ;


 TYPE_3__* CopyBrush (TYPE_3__*) ;
 int Error (char*) ;
 size_t FindFloatPlane (int*,int ) ;
 int WriteBspBrushMap (char*,TYPE_3__*) ;
 TYPE_5__* entities ;
 scalar_t__ fabs (int) ;
 TYPE_2__* mapplanes ;

void TestExpandBrushes( void ) {
 side_t *s;
 int i, j;
 bspbrush_t *brush, *list, *copy;
 vec_t dist;
 plane_t *plane;

 list = ((void*)0);

 for ( brush = entities[0].brushes ; brush ; brush = brush->next ) {
  copy = CopyBrush( brush );
  copy->next = list;
  list = copy;


  for ( i=0 ; i<brush->numsides ; i++ ) {
   s = brush->sides + i;
   plane = &mapplanes[s->planenum];
   dist = plane->dist;
   for (j=0 ; j<3 ; j++) {
    dist += fabs( 16 * plane->normal[j] );
   }
   s->planenum = FindFloatPlane( plane->normal, dist );
  }

 }

 WriteBspBrushMap ( "expanded.map", entities[0].brushes );

 Error ("can't proceed after expanding brushes");
}
