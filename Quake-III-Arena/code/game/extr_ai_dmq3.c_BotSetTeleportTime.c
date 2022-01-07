
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int eFlags; } ;
struct TYPE_5__ {int last_eFlags; TYPE_1__ cur_ps; int teleport_time; } ;
typedef TYPE_2__ bot_state_t ;


 int EF_TELEPORT_BIT ;
 int FloatTime () ;

void BotSetTeleportTime(bot_state_t *bs) {
 if ((bs->cur_ps.eFlags ^ bs->last_eFlags) & EF_TELEPORT_BIT) {
  bs->teleport_time = FloatTime();
 }
 bs->last_eFlags = bs->cur_ps.eFlags;
}
