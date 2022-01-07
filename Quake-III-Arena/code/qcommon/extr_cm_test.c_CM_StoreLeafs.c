
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lastLeaf; scalar_t__ count; scalar_t__ maxcount; int* list; int overflowed; } ;
typedef TYPE_2__ leafList_t ;
struct TYPE_7__ {TYPE_1__* leafs; } ;
struct TYPE_5__ {int cluster; } ;


 TYPE_3__ cm ;
 int qtrue ;

void CM_StoreLeafs( leafList_t *ll, int nodenum ) {
 int leafNum;

 leafNum = -1 - nodenum;


 if ( cm.leafs[ leafNum ].cluster != -1 ) {
  ll->lastLeaf = leafNum;
 }

 if ( ll->count >= ll->maxcount) {
  ll->overflowed = qtrue;
  return;
 }
 ll->list[ ll->count++ ] = leafNum;
}
