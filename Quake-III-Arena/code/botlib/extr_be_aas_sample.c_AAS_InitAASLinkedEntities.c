
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aas_link_t ;
struct TYPE_2__ {int numareas; int ** arealinkedentities; int loaded; } ;


 int FreeMemory (int **) ;
 scalar_t__ GetClearedHunkMemory (int) ;
 TYPE_1__ aasworld ;

void AAS_InitAASLinkedEntities(void)
{
 if (!aasworld.loaded) return;
 if (aasworld.arealinkedentities) FreeMemory(aasworld.arealinkedentities);
 aasworld.arealinkedentities = (aas_link_t **) GetClearedHunkMemory(
      aasworld.numareas * sizeof(aas_link_t *));
}
