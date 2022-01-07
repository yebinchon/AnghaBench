
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ weaponnum; int* inventory; } ;
typedef TYPE_1__ bot_state_t ;


 size_t INVENTORY_HEALTH ;
 scalar_t__ WP_GAUNTLET ;
 scalar_t__ WP_MACHINEGUN ;

float BotFeelingBad(bot_state_t *bs) {
 if (bs->weaponnum == WP_GAUNTLET) {
  return 100;
 }
 if (bs->inventory[INVENTORY_HEALTH] < 40) {
  return 100;
 }
 if (bs->weaponnum == WP_MACHINEGUN) {
  return 90;
 }
 if (bs->inventory[INVENTORY_HEALTH] < 60) {
  return 80;
 }
 return 0;
}
