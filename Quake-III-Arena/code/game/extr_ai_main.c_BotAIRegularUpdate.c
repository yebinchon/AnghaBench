
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FloatTime () ;
 scalar_t__ regularupdate_time ;
 int trap_BotUpdateEntityItems () ;

void BotAIRegularUpdate(void) {
 if (regularupdate_time < FloatTime()) {
  trap_BotUpdateEntityItems();
  regularupdate_time = FloatTime() + 0.3;
 }
}
