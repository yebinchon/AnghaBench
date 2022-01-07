
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ surfaceType_t ;
struct TYPE_13__ {int normal; } ;
struct TYPE_9__ {TYPE_7__ plane; } ;
typedef TYPE_2__ srfSurfaceFace_t ;
struct TYPE_10__ {scalar_t__ viewCount; scalar_t__* data; TYPE_1__* shader; } ;
typedef TYPE_3__ msurface_t ;
struct TYPE_11__ {int contents; int nummarksurfaces; TYPE_3__** firstmarksurface; struct TYPE_11__** children; TYPE_7__* plane; } ;
typedef TYPE_4__ mnode_t ;
struct TYPE_12__ {scalar_t__ viewCount; } ;
struct TYPE_8__ {int surfaceFlags; int contentFlags; } ;


 int BoxOnPlaneSide (int ,int ,TYPE_7__*) ;
 int CONTENTS_FOG ;
 double DotProduct (int ,int ) ;
 scalar_t__ SF_FACE ;
 scalar_t__ SF_GRID ;
 int SURF_NOIMPACT ;
 int SURF_NOMARKS ;
 TYPE_5__ tr ;

void R_BoxSurfaces_r(mnode_t *node, vec3_t mins, vec3_t maxs, surfaceType_t **list, int listsize, int *listlength, vec3_t dir) {

 int s, c;
 msurface_t *surf, **mark;


 while ( node->contents == -1 ) {
  s = BoxOnPlaneSide( mins, maxs, node->plane );
  if (s == 1) {
   node = node->children[0];
  } else if (s == 2) {
   node = node->children[1];
  } else {
   R_BoxSurfaces_r(node->children[0], mins, maxs, list, listsize, listlength, dir);
   node = node->children[1];
  }
 }


 mark = node->firstmarksurface;
 c = node->nummarksurfaces;
 while (c--) {

  if (*listlength >= listsize) break;

  surf = *mark;

  if ( ( surf->shader->surfaceFlags & ( SURF_NOIMPACT | SURF_NOMARKS ) )
   || ( surf->shader->contentFlags & CONTENTS_FOG ) ) {
   surf->viewCount = tr.viewCount;
  }

  else if (*(surf->data) == SF_FACE) {

   s = BoxOnPlaneSide( mins, maxs, &(( srfSurfaceFace_t * ) surf->data)->plane );
   if (s == 1 || s == 2) {
    surf->viewCount = tr.viewCount;
   } else if (DotProduct((( srfSurfaceFace_t * ) surf->data)->plane.normal, dir) > -0.5) {

    surf->viewCount = tr.viewCount;
   }
  }
  else if (*(surfaceType_t *) (surf->data) != SF_GRID) surf->viewCount = tr.viewCount;


  if (surf->viewCount != tr.viewCount) {
   surf->viewCount = tr.viewCount;
   list[*listlength] = (surfaceType_t *) surf->data;
   (*listlength)++;
  }
  mark++;
 }
}
