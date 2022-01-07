
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int posix_spawnattr_t ;
typedef int mach_port_t ;
struct TYPE_3__ {int new_port; int port_type; } ;
typedef TYPE_1__ _ps_port_action_t ;


 int EINVAL ;
 int POSIX_SPAWN_IMPORTANCE_PORT_COUNT ;
 int PSPA_IMP_WATCHPORTS ;
 int posix_spawn_appendportaction_np (int *,TYPE_1__*) ;

int
posix_spawnattr_set_importancewatch_port_np(posix_spawnattr_t * __restrict attr,
                 int count, mach_port_t portarray[])
{
 int err = 0, i;

 if (count < 0 || count > POSIX_SPAWN_IMPORTANCE_PORT_COUNT) {
  return EINVAL;
 }

 for (i = 0; i < count; i++) {
  _ps_port_action_t action = {
   .port_type = PSPA_IMP_WATCHPORTS,
   .new_port = portarray[i],
  };
  int err = posix_spawn_appendportaction_np(attr, &action);
  if (err) {
   break;
  }
 }
 return err;
}
