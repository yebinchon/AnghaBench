
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {struct TYPE_5__** children; int * tmparea; void* planenum; } ;
typedef TYPE_1__ tmp_node_t ;
typedef int tmp_area_t ;


 TYPE_1__* AAS_AllocTmpNode () ;
 scalar_t__ AAS_FindBestAreaSplitPlane (int *,int ,float*) ;
 int AAS_SplitArea (int *,int,int **,int **) ;
 void* FindFloatPlane (int ,float) ;
 int numgravitationalsubdivisions ;
 int qprintf (char*,int ) ;

tmp_node_t *AAS_SubdivideArea_r(tmp_node_t *tmpnode)
{
 int planenum;
 tmp_area_t *frontarea, *backarea;
 tmp_node_t *tmpnode1, *tmpnode2;
 vec3_t normal;
 float dist;

 if (AAS_FindBestAreaSplitPlane(tmpnode->tmparea, normal, &dist))
 {
  qprintf("\r%6d", ++numgravitationalsubdivisions);

  planenum = FindFloatPlane(normal, dist);

  AAS_SplitArea(tmpnode->tmparea, planenum, &frontarea, &backarea);

  tmpnode->tmparea = ((void*)0);
  tmpnode->planenum = FindFloatPlane(normal, dist);

  tmpnode1 = AAS_AllocTmpNode();
  tmpnode1->planenum = 0;
  tmpnode1->tmparea = frontarea;

  tmpnode2 = AAS_AllocTmpNode();
  tmpnode2->planenum = 0;
  tmpnode2->tmparea = backarea;

  tmpnode->children[0] = AAS_SubdivideArea_r(tmpnode1);
  tmpnode->children[1] = AAS_SubdivideArea_r(tmpnode2);
 }
 return tmpnode;
}
