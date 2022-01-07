
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numleafbrushes; int firstleafbrush; } ;
typedef TYPE_1__ dleaf_t ;


 int* brushmodelnumbers ;
 int* dbrushleafnums ;
 int* dleafbrushes ;
 TYPE_1__* dleafs ;

void Q2_SetLeafBrushesModelNumbers(int leafnum, int modelnum)
{
 int i, brushnum;
 dleaf_t *leaf;

 leaf = &dleafs[leafnum];
 for (i = 0; i < leaf->numleafbrushes; i++)
 {
  brushnum = dleafbrushes[leaf->firstleafbrush + i];
  brushmodelnumbers[brushnum] = modelnum;
  dbrushleafnums[brushnum] = leafnum;
 }
}
