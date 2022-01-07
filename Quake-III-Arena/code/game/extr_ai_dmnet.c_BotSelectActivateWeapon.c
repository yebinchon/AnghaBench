
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* inventory; } ;
typedef TYPE_1__ bot_state_t ;


 size_t INVENTORY_BELT ;
 size_t INVENTORY_BFG10K ;
 size_t INVENTORY_BFGAMMO ;
 size_t INVENTORY_BULLETS ;
 size_t INVENTORY_CELLS ;
 size_t INVENTORY_CHAINGUN ;
 size_t INVENTORY_LIGHTNING ;
 size_t INVENTORY_LIGHTNINGAMMO ;
 size_t INVENTORY_MACHINEGUN ;
 size_t INVENTORY_NAILGUN ;
 size_t INVENTORY_NAILS ;
 size_t INVENTORY_PLASMAGUN ;
 size_t INVENTORY_RAILGUN ;
 size_t INVENTORY_ROCKETLAUNCHER ;
 size_t INVENTORY_ROCKETS ;
 size_t INVENTORY_SHELLS ;
 size_t INVENTORY_SHOTGUN ;
 size_t INVENTORY_SLUGS ;
 int WEAPONINDEX_BFG ;
 int WEAPONINDEX_CHAINGUN ;
 int WEAPONINDEX_LIGHTNING ;
 int WEAPONINDEX_MACHINEGUN ;
 int WEAPONINDEX_NAILGUN ;
 int WEAPONINDEX_PLASMAGUN ;
 int WEAPONINDEX_RAILGUN ;
 int WEAPONINDEX_ROCKET_LAUNCHER ;
 int WEAPONINDEX_SHOTGUN ;

int BotSelectActivateWeapon(bot_state_t *bs) {

 if (bs->inventory[INVENTORY_MACHINEGUN] > 0 && bs->inventory[INVENTORY_BULLETS] > 0)
  return WEAPONINDEX_MACHINEGUN;
 else if (bs->inventory[INVENTORY_SHOTGUN] > 0 && bs->inventory[INVENTORY_SHELLS] > 0)
  return WEAPONINDEX_SHOTGUN;
 else if (bs->inventory[INVENTORY_PLASMAGUN] > 0 && bs->inventory[INVENTORY_CELLS] > 0)
  return WEAPONINDEX_PLASMAGUN;
 else if (bs->inventory[INVENTORY_LIGHTNING] > 0 && bs->inventory[INVENTORY_LIGHTNINGAMMO] > 0)
  return WEAPONINDEX_LIGHTNING;






 else if (bs->inventory[INVENTORY_RAILGUN] > 0 && bs->inventory[INVENTORY_SLUGS] > 0)
  return WEAPONINDEX_RAILGUN;
 else if (bs->inventory[INVENTORY_ROCKETLAUNCHER] > 0 && bs->inventory[INVENTORY_ROCKETS] > 0)
  return WEAPONINDEX_ROCKET_LAUNCHER;
 else if (bs->inventory[INVENTORY_BFG10K] > 0 && bs->inventory[INVENTORY_BFGAMMO] > 0)
  return WEAPONINDEX_BFG;
 else {
  return -1;
 }
}
