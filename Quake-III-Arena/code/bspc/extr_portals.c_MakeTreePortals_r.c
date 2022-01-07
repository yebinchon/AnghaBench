
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ planenum; struct TYPE_6__** children; int * maxs; int * mins; } ;
typedef TYPE_1__ node_t ;


 int CalcNodeBounds (TYPE_1__*) ;
 int Log_Print (char*) ;
 int MAX_MAP_BOUNDS ;
 int MakeNodePortal (TYPE_1__*) ;
 scalar_t__ PLANENUM_LEAF ;
 int SplitNodePortals (TYPE_1__*) ;
 int c_numportalizednodes ;
 scalar_t__ cancelconversion ;
 int qprintf (char*,int ) ;

void MakeTreePortals_r (node_t *node)
{
 int i;






 CalcNodeBounds (node);
 if (node->mins[0] >= node->maxs[0])
 {
  Log_Print("WARNING: node without a volume\n");
 }

 for (i=0 ; i<3 ; i++)
 {
  if (node->mins[i] < -MAX_MAP_BOUNDS || node->maxs[i] > MAX_MAP_BOUNDS)
  {
   Log_Print("WARNING: node with unbounded volume\n");
   break;
  }
 }
 if (node->planenum == PLANENUM_LEAF)
  return;

 MakeNodePortal (node);
 SplitNodePortals (node);

 MakeTreePortals_r (node->children[0]);
 MakeTreePortals_r (node->children[1]);
}
