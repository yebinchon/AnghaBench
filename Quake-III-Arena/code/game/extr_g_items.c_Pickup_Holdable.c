
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* client; TYPE_1__* item; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_8__ {int eFlags; TYPE_1__** stats; } ;
struct TYPE_9__ {TYPE_2__ ps; } ;
struct TYPE_7__ {scalar_t__ giTag; } ;


 int EF_KAMIKAZE ;
 scalar_t__ HI_KAMIKAZE ;
 int RESPAWN_HOLDABLE ;
 size_t STAT_HOLDABLE_ITEM ;
 int bg_itemlist ;

int Pickup_Holdable( gentity_t *ent, gentity_t *other ) {

 other->client->ps.stats[STAT_HOLDABLE_ITEM] = ent->item - bg_itemlist;

 if( ent->item->giTag == HI_KAMIKAZE ) {
  other->client->ps.eFlags |= EF_KAMIKAZE;
 }

 return RESPAWN_HOLDABLE;
}
