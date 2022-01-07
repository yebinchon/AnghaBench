
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hooks; } ;
typedef TYPE_1__ chassis_shutdown_hooks_t ;
struct TYPE_7__ {scalar_t__ is_called; int udata; int (* func ) (int ) ;} ;
typedef TYPE_2__ chassis_shutdown_hook_t ;
typedef int GString ;
typedef int GHashTableIter ;


 scalar_t__ TRUE ;
 int chassis_shutdown_hooks_lock (TYPE_1__*) ;
 int chassis_shutdown_hooks_unlock (TYPE_1__*) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,void**,void**) ;
 int stub1 (int ) ;

void chassis_shutdown_hooks_call(chassis_shutdown_hooks_t *hooks) {
 GHashTableIter iter;
 GString *key;
 chassis_shutdown_hook_t *hook;

 chassis_shutdown_hooks_lock(hooks);
 g_hash_table_iter_init(&iter, hooks->hooks);
 while (g_hash_table_iter_next(&iter, (void **)&key, (void **)&hook)) {
  if (hook->func && !hook->is_called) hook->func(hook->udata);
  hook->is_called = TRUE;
 }
 chassis_shutdown_hooks_unlock(hooks);
}
