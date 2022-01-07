
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec3_t ;
struct TYPE_10__ {float dist; int normal; } ;
struct TYPE_8__ {int hint; int * winding; TYPE_2__* onnode; TYPE_3__ plane; TYPE_2__** nodes; struct TYPE_8__** next; } ;
typedef TYPE_1__ portal_t ;
struct TYPE_9__ {size_t planenum; int * children; int hint; TYPE_1__* portals; } ;
typedef TYPE_2__ node_t ;


 int AddPortalToNodes (TYPE_1__*,int ,int ) ;
 TYPE_1__* AllocPortal () ;
 int * BaseWindingForNode (TYPE_2__*) ;
 int CLIP_EPSILON ;
 int ChopWindingInPlace (int **,int ,float,int ) ;
 int Error (char*) ;
 int FreeWinding (int *) ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 scalar_t__ WindingIsTiny (int *) ;
 int c_tinyportals ;
 TYPE_3__* mapplanes ;
 int vec3_origin ;

void MakeNodePortal (node_t *node)
{
 portal_t *new_portal, *p;
 winding_t *w;
 vec3_t normal;
 float dist;
 int side;

 w = BaseWindingForNode (node);


 for (p = node->portals ; p && w; p = p->next[side])
 {
  if (p->nodes[0] == node)
  {
   side = 0;
   VectorCopy (p->plane.normal, normal);
   dist = p->plane.dist;
  }
  else if (p->nodes[1] == node)
  {
   side = 1;
   VectorSubtract (vec3_origin, p->plane.normal, normal);
   dist = -p->plane.dist;
  }
  else
   Error ("CutNodePortals_r: mislinked portal");

  ChopWindingInPlace (&w, normal, dist, CLIP_EPSILON);
 }

 if (!w)
 {
  return;
 }

 if (WindingIsTiny (w))
 {
  c_tinyportals++;
  FreeWinding (w);
  return;
 }

 new_portal = AllocPortal ();
 new_portal->plane = mapplanes[node->planenum];
 new_portal->onnode = node;
 new_portal->winding = w;
 new_portal->hint = node->hint;
 AddPortalToNodes (new_portal, node->children[0], node->children[1]);
}
