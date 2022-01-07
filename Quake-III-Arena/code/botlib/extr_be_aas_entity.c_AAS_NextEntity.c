
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int maxentities; TYPE_2__* entities; int loaded; } ;
struct TYPE_4__ {scalar_t__ valid; } ;
struct TYPE_5__ {TYPE_1__ i; } ;


 TYPE_3__ aasworld ;

int AAS_NextEntity(int entnum)
{
 if (!aasworld.loaded) return 0;

 if (entnum < 0) entnum = -1;
 while(++entnum < aasworld.maxentities)
 {
  if (aasworld.entities[entnum].i.valid) return entnum;
 }
 return 0;
}
