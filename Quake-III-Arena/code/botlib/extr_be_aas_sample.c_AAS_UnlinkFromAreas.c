
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t areanum; TYPE_2__* prev_ent; TYPE_1__* next_ent; struct TYPE_9__* next_area; } ;
typedef TYPE_3__ aas_link_t ;
struct TYPE_10__ {TYPE_1__** arealinkedentities; } ;
struct TYPE_8__ {TYPE_1__* next_ent; } ;
struct TYPE_7__ {TYPE_2__* prev_ent; } ;


 int AAS_DeAllocAASLink (TYPE_3__*) ;
 TYPE_4__ aasworld ;

void AAS_UnlinkFromAreas(aas_link_t *areas)
{
 aas_link_t *link, *nextlink;

 for (link = areas; link; link = nextlink)
 {

  nextlink = link->next_area;

  if (link->prev_ent) link->prev_ent->next_ent = link->next_ent;
  else aasworld.arealinkedentities[link->areanum] = link->next_ent;
  if (link->next_ent) link->next_ent->prev_ent = link->prev_ent;

  AAS_DeAllocAASLink(link);
 }
}
