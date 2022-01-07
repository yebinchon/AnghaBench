
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_6__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_7__ {size_t planenum; int * occupant; scalar_t__ opaque; struct TYPE_7__** children; } ;
typedef TYPE_2__ node_t ;
typedef int entity_t ;


 scalar_t__ DotProduct (int ,int ) ;
 int FloodPortals_r (TYPE_2__*,int) ;
 size_t PLANENUM_LEAF ;
 TYPE_1__* mapplanes ;
 int qfalse ;
 int qtrue ;

qboolean PlaceOccupant (node_t *headnode, vec3_t origin, entity_t *occupant)
{
 node_t *node;
 vec_t d;
 plane_t *plane;


 node = headnode;
 while (node->planenum != PLANENUM_LEAF)
 {
  plane = &mapplanes[node->planenum];
  d = DotProduct (origin, plane->normal) - plane->dist;
  if (d >= 0)
   node = node->children[0];
  else
   node = node->children[1];
 }

 if ( node->opaque )
  return qfalse;
 node->occupant = occupant;

 FloodPortals_r (node, 1);

 return qtrue;
}
