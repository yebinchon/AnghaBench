
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ giType; scalar_t__ giTag; } ;
struct TYPE_5__ {int itemPickup; scalar_t__ weaponSelect; int time; int weaponSelectTime; int itemPickupBlendTime; int itemPickupTime; } ;
struct TYPE_4__ {scalar_t__ integer; } ;


 scalar_t__ IT_WEAPON ;
 scalar_t__ WP_MACHINEGUN ;
 TYPE_3__* bg_itemlist ;
 TYPE_2__ cg ;
 TYPE_1__ cg_autoswitch ;

__attribute__((used)) static void CG_ItemPickup( int itemNum ) {
 cg.itemPickup = itemNum;
 cg.itemPickupTime = cg.time;
 cg.itemPickupBlendTime = cg.time;

 if ( bg_itemlist[itemNum].giType == IT_WEAPON ) {

  if ( cg_autoswitch.integer && bg_itemlist[itemNum].giTag != WP_MACHINEGUN ) {
   cg.weaponSelectTime = cg.time;
   cg.weaponSelect = bg_itemlist[itemNum].giTag;
  }
 }

}
