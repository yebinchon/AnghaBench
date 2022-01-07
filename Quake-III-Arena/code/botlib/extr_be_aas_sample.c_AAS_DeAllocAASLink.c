
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next_area; int * prev_area; struct TYPE_4__* next_ent; struct TYPE_4__* prev_ent; } ;
typedef TYPE_1__ aas_link_t ;
struct TYPE_5__ {TYPE_1__* freelinks; } ;


 TYPE_2__ aasworld ;
 int numaaslinks ;

void AAS_DeAllocAASLink(aas_link_t *link)
{
 if (aasworld.freelinks) aasworld.freelinks->prev_ent = link;
 link->prev_ent = ((void*)0);
 link->next_ent = aasworld.freelinks;
 link->prev_area = ((void*)0);
 link->next_area = ((void*)0);
 aasworld.freelinks = link;
 numaaslinks++;
}
