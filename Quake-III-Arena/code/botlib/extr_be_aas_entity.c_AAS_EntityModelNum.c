
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int maxentities; TYPE_2__* entities; int initialized; } ;
struct TYPE_7__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_5__ {int modelindex; } ;
struct TYPE_6__ {TYPE_1__ i; } ;


 int PRT_FATAL ;
 TYPE_4__ aasworld ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*,int) ;

int AAS_EntityModelNum(int entnum)
{
 if (!aasworld.initialized) return 0;

 if (entnum < 0 || entnum >= aasworld.maxentities)
 {
  botimport.Print(PRT_FATAL, "AAS_EntityModelNum: entnum %d out of range\n", entnum);
  return 0;
 }
 return aasworld.entities[entnum].i.modelindex;
}
