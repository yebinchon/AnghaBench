
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int turnstile_stats_update_flags_t ;
struct turnstile {scalar_t__ ts_priority; } ;
struct TYPE_2__ {scalar_t__* qos_pri; } ;


 size_t THREAD_QOS_USER_INTERACTIVE ;
 int TSU_ABOVE_UI_PRI_CHANGE ;
 int TSU_FLAGS_NONE ;
 scalar_t__ TURNSTILE_ULOCK ;
 TYPE_1__ thread_qos_policy_params ;
 scalar_t__ turnstile_get_type (struct turnstile*) ;

__attribute__((used)) static turnstile_stats_update_flags_t
turnstile_get_update_flags_for_above_UI_pri_change(struct turnstile *turnstile)
{
 if (turnstile->ts_priority >
     (thread_qos_policy_params.qos_pri[THREAD_QOS_USER_INTERACTIVE] + 1) &&
     turnstile_get_type(turnstile) != TURNSTILE_ULOCK) {
  return TSU_ABOVE_UI_PRI_CHANGE;

 }

 return TSU_FLAGS_NONE;
}
