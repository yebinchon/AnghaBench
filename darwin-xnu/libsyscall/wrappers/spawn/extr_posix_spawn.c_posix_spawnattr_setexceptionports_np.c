
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_state_flavor_t ;
typedef int posix_spawnattr_t ;
typedef int mach_port_t ;
typedef int exception_mask_t ;
typedef int exception_behavior_t ;
struct TYPE_3__ {int flavor; int behavior; int new_port; int mask; int port_type; } ;
typedef TYPE_1__ _ps_port_action_t ;


 int PSPA_EXCEPTION ;
 int posix_spawn_appendportaction_np (int *,TYPE_1__*) ;

int
posix_spawnattr_setexceptionports_np(
  posix_spawnattr_t *attr,
  exception_mask_t mask,
  mach_port_t new_port,
  exception_behavior_t behavior,
  thread_state_flavor_t flavor)
{
 _ps_port_action_t action = {
  .port_type = PSPA_EXCEPTION,
  .mask = mask,
  .new_port = new_port,
  .behavior = behavior,
  .flavor = flavor,
 };
 return posix_spawn_appendportaction_np(attr, &action);
}
