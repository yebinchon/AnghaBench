
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int maxentities; TYPE_1__* entities; } ;
struct TYPE_3__ {int * leaves; int * areas; } ;


 TYPE_2__ aasworld ;

void AAS_ResetEntityLinks(void)
{
 int i;
 for (i = 0; i < aasworld.maxentities; i++)
 {
  aasworld.entities[i].areas = ((void*)0);
  aasworld.entities[i].leaves = ((void*)0);
 }
}
