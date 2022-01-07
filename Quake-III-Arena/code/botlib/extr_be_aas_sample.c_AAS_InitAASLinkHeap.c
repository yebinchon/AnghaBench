
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next_ent; struct TYPE_3__* prev_ent; } ;
typedef TYPE_1__ aas_link_t ;
struct TYPE_4__ {int linkheapsize; TYPE_1__* linkheap; TYPE_1__* freelinks; } ;


 scalar_t__ GetHunkMemory (int) ;
 scalar_t__ LibVarValue (char*,char*) ;
 TYPE_2__ aasworld ;
 int numaaslinks ;

void AAS_InitAASLinkHeap(void)
{
 int i, max_aaslinks;

 max_aaslinks = aasworld.linkheapsize;

 if (!aasworld.linkheap)
 {



  max_aaslinks = (int) LibVarValue("max_aaslinks", "6144");

  if (max_aaslinks < 0) max_aaslinks = 0;
  aasworld.linkheapsize = max_aaslinks;
  aasworld.linkheap = (aas_link_t *) GetHunkMemory(max_aaslinks * sizeof(aas_link_t));
 }

 aasworld.linkheap[0].prev_ent = ((void*)0);
 aasworld.linkheap[0].next_ent = &aasworld.linkheap[1];
 for (i = 1; i < max_aaslinks-1; i++)
 {
  aasworld.linkheap[i].prev_ent = &aasworld.linkheap[i - 1];
  aasworld.linkheap[i].next_ent = &aasworld.linkheap[i + 1];
 }
 aasworld.linkheap[max_aaslinks-1].prev_ent = &aasworld.linkheap[max_aaslinks-2];
 aasworld.linkheap[max_aaslinks-1].next_ent = ((void*)0);

 aasworld.freelinks = &aasworld.linkheap[0];

 numaaslinks = max_aaslinks;
}
