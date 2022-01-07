
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* client; TYPE_1__* item; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_12__ {scalar_t__ giTag; } ;
struct TYPE_9__ {size_t* stats; } ;
struct TYPE_10__ {TYPE_2__ ps; } ;
struct TYPE_8__ {scalar_t__ quantity; } ;


 scalar_t__ PW_GUARD ;
 int RESPAWN_ARMOR ;
 size_t STAT_ARMOR ;
 size_t STAT_MAX_HEALTH ;
 size_t STAT_PERSISTANT_POWERUP ;
 TYPE_5__* bg_itemlist ;

int Pickup_Armor( gentity_t *ent, gentity_t *other ) {
 other->client->ps.stats[STAT_ARMOR] += ent->item->quantity;
 if ( other->client->ps.stats[STAT_ARMOR] > other->client->ps.stats[STAT_MAX_HEALTH] * 2 ) {
  other->client->ps.stats[STAT_ARMOR] = other->client->ps.stats[STAT_MAX_HEALTH] * 2;
 }


 return RESPAWN_ARMOR;
}
