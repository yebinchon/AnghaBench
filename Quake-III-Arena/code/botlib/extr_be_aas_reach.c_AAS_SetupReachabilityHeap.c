
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ aas_lreachability_t ;


 int AAS_MAX_REACHABILITYSIZE ;
 scalar_t__ GetClearedMemory (int) ;
 TYPE_1__* nextreachability ;
 scalar_t__ numlreachabilities ;
 TYPE_1__* reachabilityheap ;

void AAS_SetupReachabilityHeap(void)
{
 int i;

 reachabilityheap = (aas_lreachability_t *) GetClearedMemory(
      AAS_MAX_REACHABILITYSIZE * sizeof(aas_lreachability_t));
 for (i = 0; i < AAS_MAX_REACHABILITYSIZE-1; i++)
 {
  reachabilityheap[i].next = &reachabilityheap[i+1];
 }
 reachabilityheap[AAS_MAX_REACHABILITYSIZE-1].next = ((void*)0);
 nextreachability = reachabilityheap;
 numlreachabilities = 0;
}
