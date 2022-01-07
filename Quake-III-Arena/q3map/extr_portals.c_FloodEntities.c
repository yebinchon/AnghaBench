
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {scalar_t__ occupied; } ;
struct TYPE_5__ {TYPE_1__ outside_node; int * headnode; } ;
typedef TYPE_2__ tree_t ;
typedef scalar_t__ qboolean ;
typedef int node_t ;


 int GetVectorForKey (int *,char*,int*) ;
 scalar_t__ PlaceOccupant (int *,int*,int *) ;
 char* ValueForKey (int *,char*) ;
 scalar_t__ VectorCompare (int*,int ) ;
 scalar_t__ c_floodedleafs ;
 int * entities ;
 int num_entities ;
 scalar_t__ qfalse ;
 int qprintf (char*,...) ;
 scalar_t__ qtrue ;
 int vec3_origin ;

qboolean FloodEntities( tree_t *tree ) {
 int i;
 vec3_t origin;
 const char *cl;
 qboolean inside;
 node_t *headnode;

 headnode = tree->headnode;
 qprintf ("--- FloodEntities ---\n");
 inside = qfalse;
 tree->outside_node.occupied = 0;

 c_floodedleafs = 0;
 for (i=1 ; i<num_entities ; i++)
 {
  GetVectorForKey (&entities[i], "origin", origin);
  if (VectorCompare(origin, vec3_origin))
   continue;

  cl = ValueForKey (&entities[i], "classname");

  origin[2] += 1;

  if (PlaceOccupant (headnode, origin, &entities[i]))
   inside = qtrue;
 }

 qprintf("%5i flooded leafs\n", c_floodedleafs );

 if (!inside)
 {
  qprintf ("no entities in open -- no filling\n");
 }
 else if (tree->outside_node.occupied)
 {
  qprintf ("entity reached from outside -- no filling\n");
 }

 return (qboolean)(inside && !tree->outside_node.occupied);
}
