
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ pm_type; } ;
struct TYPE_5__ {TYPE_1__ cur_ps; } ;
typedef TYPE_2__ bot_state_t ;


 scalar_t__ PM_DEAD ;

qboolean BotIsDead(bot_state_t *bs) {
 return (bs->cur_ps.pm_type == PM_DEAD);
}
