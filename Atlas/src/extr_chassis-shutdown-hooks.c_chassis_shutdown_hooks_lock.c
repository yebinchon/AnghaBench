
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ chassis_shutdown_hooks_t ;


 int g_mutex_lock (int ) ;

void chassis_shutdown_hooks_lock(chassis_shutdown_hooks_t *hooks) {
 g_mutex_lock(hooks->mutex);
}
