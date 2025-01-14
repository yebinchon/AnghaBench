
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int count; int health; TYPE_3__* item; TYPE_2__* client; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_12__ {scalar_t__ giTag; } ;
struct TYPE_10__ {int quantity; } ;
struct TYPE_8__ {size_t* stats; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;


 scalar_t__ PW_GUARD ;
 int RESPAWN_HEALTH ;
 int RESPAWN_MEGAHEALTH ;
 size_t STAT_HEALTH ;
 size_t STAT_MAX_HEALTH ;
 size_t STAT_PERSISTANT_POWERUP ;
 TYPE_5__* bg_itemlist ;

int Pickup_Health (gentity_t *ent, gentity_t *other) {
 int max;
 int quantity;
 if ( ent->item->quantity != 5 && ent->item->quantity != 100 ) {
  max = other->client->ps.stats[STAT_MAX_HEALTH];
 } else {
  max = other->client->ps.stats[STAT_MAX_HEALTH] * 2;
 }

 if ( ent->count ) {
  quantity = ent->count;
 } else {
  quantity = ent->item->quantity;
 }

 other->health += quantity;

 if (other->health > max ) {
  other->health = max;
 }
 other->client->ps.stats[STAT_HEALTH] = other->health;

 if ( ent->item->quantity == 100 ) {
  return RESPAWN_MEGAHEALTH;
 }

 return RESPAWN_HEALTH;
}
