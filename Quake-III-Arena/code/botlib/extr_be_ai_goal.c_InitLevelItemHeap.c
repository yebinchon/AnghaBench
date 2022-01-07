
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ levelitem_t ;


 int FreeMemory (TYPE_1__*) ;
 scalar_t__ GetClearedMemory (int) ;
 scalar_t__ LibVarValue (char*,char*) ;
 TYPE_1__* freelevelitems ;
 TYPE_1__* levelitemheap ;

void InitLevelItemHeap(void)
{
 int i, max_levelitems;

 if (levelitemheap) FreeMemory(levelitemheap);

 max_levelitems = (int) LibVarValue("max_levelitems", "256");
 levelitemheap = (levelitem_t *) GetClearedMemory(max_levelitems * sizeof(levelitem_t));

 for (i = 0; i < max_levelitems-1; i++)
 {
  levelitemheap[i].next = &levelitemheap[i + 1];
 }
 levelitemheap[max_levelitems-1].next = ((void*)0);

 freelevelitems = levelitemheap;
}
