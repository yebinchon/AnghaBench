
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_3__ {int numweapons; } ;


 int PRT_ERROR ;
 TYPE_2__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*) ;
 TYPE_1__* weaponconfig ;

int BotValidWeaponNumber(int weaponnum)
{
 if (weaponnum <= 0 || weaponnum > weaponconfig->numweapons)
 {
  botimport.Print(PRT_ERROR, "weapon number out of range\n");
  return qfalse;
 }
 return qtrue;
}
