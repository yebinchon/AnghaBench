
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int gpointer ;
typedef int gchar ;
struct TYPE_6__ {scalar_t__ magic; int (* new_stats ) () ;int stats; int version; scalar_t__ name; int (* init ) () ;int config; int module; } ;
typedef TYPE_1__ chassis_plugin ;


 scalar_t__ CHASSIS_PLUGIN_MAGIC ;
 int G_MODULE_BIND_LOCAL ;
 int chassis_plugin_free (TYPE_1__*) ;
 TYPE_1__* chassis_plugin_new () ;
 int g_critical (char*,int const*,...) ;
 int g_module_error () ;
 int g_module_open (int const*,int ) ;
 int g_module_symbol (int ,char*,int ) ;
 scalar_t__ g_strdup (int const*) ;
 int stub1 () ;
 int stub2 () ;

chassis_plugin *chassis_plugin_load(const gchar *name) {
 int (*plugin_init)(chassis_plugin *p);
 chassis_plugin *p = chassis_plugin_new();

 p->module = g_module_open(name, G_MODULE_BIND_LOCAL);

 if (!p->module) {
  g_critical("loading module '%s' failed: %s", name, g_module_error());

  chassis_plugin_free(p);

  return ((void*)0);
 }


 if (!g_module_symbol(p->module, "plugin_init", (gpointer) &plugin_init)) {
  g_critical("module '%s' doesn't have a init-function: %s", name, g_module_error());
  chassis_plugin_free(p);
  return ((void*)0);
 }

 if (0 != plugin_init(p)) {
  g_critical("init-function for module '%s' failed", name);
  chassis_plugin_free(p);
  return ((void*)0);
 }

 if (p->magic != CHASSIS_PLUGIN_MAGIC) {
  g_critical("plugin '%s' doesn't match the current plugin interface (plugin is %lx, chassis is %lx)", name, p->magic, CHASSIS_PLUGIN_MAGIC);
  chassis_plugin_free(p);
  return ((void*)0);
 }

 if (p->init) {
  p->config = p->init();
 }


 if (!p->name) p->name = g_strdup(name);

 if (!p->version) {
  g_critical("plugin '%s' doesn't set a version number, refusing to load this plugin", name);
  chassis_plugin_free(p);
  return ((void*)0);
 }

 if (p->new_stats) {
  p->stats = p->new_stats();
 }

 return p;
}
