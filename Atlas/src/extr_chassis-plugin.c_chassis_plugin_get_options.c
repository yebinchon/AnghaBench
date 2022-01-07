
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int config; int * (* get_options ) (int ) ;} ;
typedef TYPE_1__ chassis_plugin ;
typedef int GOptionEntry ;


 int g_critical (char*,int ) ;
 int * stub1 (int ) ;

GOptionEntry *chassis_plugin_get_options(chassis_plugin *p) {
 GOptionEntry * options;

 if (!p->get_options) return ((void*)0);

 if (((void*)0) == (options = p->get_options(p->config))) {
  g_critical("adding config options for module '%s' failed", p->name);
 }

 return options;
}
