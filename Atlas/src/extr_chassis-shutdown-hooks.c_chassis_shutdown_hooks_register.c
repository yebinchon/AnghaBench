
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gsize ;
typedef int gboolean ;
struct TYPE_5__ {int hooks; } ;
typedef TYPE_1__ chassis_shutdown_hooks_t ;
typedef int chassis_shutdown_hook_t ;


 int FALSE ;
 int TRUE ;
 int chassis_shutdown_hooks_lock (TYPE_1__*) ;
 int chassis_shutdown_hooks_unlock (TYPE_1__*) ;
 int g_hash_table_insert (int ,int ,int *) ;
 int * g_hash_table_lookup_const (int ,char const*,int ) ;
 int g_string_new_len (char const*,int ) ;

gboolean chassis_shutdown_hooks_register(chassis_shutdown_hooks_t *hooks,
  const char *key, gsize key_len,
  chassis_shutdown_hook_t *hook) {
 gboolean is_inserted = FALSE;

 chassis_shutdown_hooks_lock(hooks);
 if (((void*)0) == g_hash_table_lookup_const(hooks->hooks, key, key_len)) {
  g_hash_table_insert(hooks->hooks, g_string_new_len(key, key_len), hook);
  is_inserted = TRUE;
 }
 chassis_shutdown_hooks_unlock(hooks);

 return is_inserted;
}
