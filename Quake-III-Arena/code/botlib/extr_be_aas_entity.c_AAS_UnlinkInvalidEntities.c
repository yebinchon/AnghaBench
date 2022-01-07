
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valid; } ;
struct TYPE_5__ {int * leaves; int * areas; TYPE_1__ i; } ;
typedef TYPE_2__ aas_entity_t ;
struct TYPE_6__ {int maxentities; TYPE_2__* entities; } ;


 int AAS_UnlinkFromAreas (int *) ;
 int AAS_UnlinkFromBSPLeaves (int *) ;
 TYPE_3__ aasworld ;

void AAS_UnlinkInvalidEntities(void)
{
 int i;
 aas_entity_t *ent;

 for (i = 0; i < aasworld.maxentities; i++)
 {
  ent = &aasworld.entities[i];
  if (!ent->i.valid)
  {
   AAS_UnlinkFromAreas( ent->areas );
   ent->areas = ((void*)0);
   AAS_UnlinkFromBSPLeaves( ent->leaves );
   ent->leaves = ((void*)0);
  }
 }
}
