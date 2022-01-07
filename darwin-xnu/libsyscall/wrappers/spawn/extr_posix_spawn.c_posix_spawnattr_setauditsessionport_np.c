
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int posix_spawnattr_t ;
typedef int mach_port_t ;
struct TYPE_3__ {int new_port; int port_type; } ;
typedef TYPE_1__ _ps_port_action_t ;


 int PSPA_AU_SESSION ;
 int posix_spawn_appendportaction_np (int *,TYPE_1__*) ;

int
posix_spawnattr_setauditsessionport_np(
  posix_spawnattr_t *attr,
  mach_port_t au_sessionport)
{
 _ps_port_action_t action = {
  .port_type = PSPA_AU_SESSION,
  .new_port = au_sessionport,
 };
 return posix_spawn_appendportaction_np(attr, &action);
}
