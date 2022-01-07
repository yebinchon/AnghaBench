
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_4__ {int count; int maxcount; int overflowed; scalar_t__ lastLeaf; int storeLeafs; void* list; int * bounds; } ;
typedef TYPE_1__ leafList_t ;
typedef int cbrush_t ;
struct TYPE_5__ {int checkcount; } ;


 int CM_BoxLeafnums_r (TYPE_1__*,int ) ;
 int CM_StoreBrushes ;
 int VectorCopy (int const,int ) ;
 TYPE_2__ cm ;
 int qfalse ;

int CM_BoxBrushes( const vec3_t mins, const vec3_t maxs, cbrush_t **list, int listsize ) {
 leafList_t ll;

 cm.checkcount++;

 VectorCopy( mins, ll.bounds[0] );
 VectorCopy( maxs, ll.bounds[1] );
 ll.count = 0;
 ll.maxcount = listsize;
 ll.list = (void *)list;
 ll.storeLeafs = CM_StoreBrushes;
 ll.lastLeaf = 0;
 ll.overflowed = qfalse;

 CM_BoxLeafnums_r( &ll, 0 );

 return ll.count;
}
