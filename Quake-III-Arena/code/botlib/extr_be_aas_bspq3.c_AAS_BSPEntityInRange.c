
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_3__ {int numentities; } ;


 int PRT_MESSAGE ;
 TYPE_2__ botimport ;
 TYPE_1__ bspworld ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*) ;

int AAS_BSPEntityInRange(int ent)
{
 if (ent <= 0 || ent >= bspworld.numentities)
 {
  botimport.Print(PRT_MESSAGE, "bsp entity out of range\n");
  return qfalse;
 }
 return qtrue;
}
