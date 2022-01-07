
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_8__ {int side; } ;
typedef TYPE_2__ mapDrawSurface_t ;


 int FilterSideIntoTree_r (int *,int ,TYPE_2__*,int ) ;
 int * WindingFromDrawSurf (TYPE_2__*) ;

int FilterFaceIntoTree( mapDrawSurface_t *ds, tree_t *tree ) {
 int l;
 winding_t *w;

 w = WindingFromDrawSurf( ds );
 l = FilterSideIntoTree_r( w, ds->side, ds, tree->headnode );

 return l;
}
