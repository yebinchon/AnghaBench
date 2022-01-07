
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int maxentities; TYPE_2__* entities; } ;
struct TYPE_4__ {int number; int valid; } ;
struct TYPE_5__ {TYPE_1__ i; } ;


 TYPE_3__ aasworld ;
 int qfalse ;

void AAS_InvalidateEntities(void)
{
 int i;
 for (i = 0; i < aasworld.maxentities; i++)
 {
  aasworld.entities[i].i.valid = qfalse;
  aasworld.entities[i].i.number = i;
 }
}
