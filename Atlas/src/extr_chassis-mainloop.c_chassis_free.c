
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_9__ {int config; int (* destroy ) (int ) ;} ;
typedef TYPE_1__ chassis_plugin ;
struct TYPE_10__ {int backends; int sc; int shutdown_hooks; struct TYPE_10__* event_hdr_version; scalar_t__ event_base; struct TYPE_10__* instance_name; TYPE_3__* threads; scalar_t__ stats; struct TYPE_10__* user; struct TYPE_10__* log_path; struct TYPE_10__* base_dir; TYPE_3__* modules; } ;
typedef TYPE_2__ chassis ;
struct TYPE_11__ {size_t len; TYPE_1__** pdata; } ;
typedef TYPE_3__ GPtrArray ;


 int TRUE ;
 int chassis_event_thread_free (TYPE_1__*) ;
 int chassis_plugin_free (TYPE_1__*) ;
 int chassis_shutdown_hooks_call (int ) ;
 int chassis_shutdown_hooks_free (int ) ;
 int chassis_stats_free (scalar_t__) ;
 int chassis_timestamps_global_free (int *) ;
 int event_base_free (scalar_t__) ;
 char* event_get_version () ;
 int g_assert (int (*) (int )) ;
 int g_free (TYPE_2__*) ;
 int g_ptr_array_free (TYPE_3__*,int ) ;
 int lua_scope_free (int ) ;
 int network_backends_free (int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stub1 (int ) ;

void chassis_free(chassis *chas) {
 guint i;




 if (!chas) return;


 for (i = 0; i < chas->modules->len; i++) {
  chassis_plugin *p = chas->modules->pdata[i];

  g_assert(p->destroy);
  p->destroy(p->config);
 }

 chassis_shutdown_hooks_call(chas->shutdown_hooks);

 for (i = 0; i < chas->modules->len; i++) {
  chassis_plugin *p = chas->modules->pdata[i];

  chassis_plugin_free(p);
 }

 g_ptr_array_free(chas->modules, TRUE);

 if (chas->base_dir) g_free(chas->base_dir);
 if (chas->log_path) g_free(chas->log_path);
 if (chas->user) g_free(chas->user);

 if (chas->stats) chassis_stats_free(chas->stats);

 chassis_timestamps_global_free(((void*)0));

 GPtrArray *threads = chas->threads;
 if (threads) {
  for (i = 0; i < threads->len; ++i) {
   chassis_event_thread_free(threads->pdata[i]);
  }

  g_ptr_array_free(threads, TRUE);
 }

 if (chas->instance_name) g_free(chas->instance_name);
 g_free(chas->event_hdr_version);

 chassis_shutdown_hooks_free(chas->shutdown_hooks);

 lua_scope_free(chas->sc);

 network_backends_free(chas->backends);

 g_free(chas);
}
