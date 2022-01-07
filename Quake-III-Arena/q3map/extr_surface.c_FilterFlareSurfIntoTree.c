
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_7__ {int lightmapOrigin; } ;
typedef TYPE_2__ mapDrawSurface_t ;


 int FilterMapDrawSurfIntoTree (int ,TYPE_2__*,int ) ;

int FilterFlareSurfIntoTree( mapDrawSurface_t *ds, tree_t *tree ) {
 return FilterMapDrawSurfIntoTree( ds->lightmapOrigin, ds, tree->headnode );
}
