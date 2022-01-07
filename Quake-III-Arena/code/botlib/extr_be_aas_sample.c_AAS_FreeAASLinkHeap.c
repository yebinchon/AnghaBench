
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ linkheapsize; int * linkheap; } ;


 int FreeMemory (int *) ;
 TYPE_1__ aasworld ;

void AAS_FreeAASLinkHeap(void)
{
 if (aasworld.linkheap) FreeMemory(aasworld.linkheap);
 aasworld.linkheap = ((void*)0);
 aasworld.linkheapsize = 0;
}
