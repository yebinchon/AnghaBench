
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* version; scalar_t__ module; struct TYPE_4__* name; struct TYPE_4__* option_grp_name; } ;
typedef TYPE_1__ chassis_plugin ;


 int g_free (TYPE_1__*) ;
 int g_module_close (scalar_t__) ;

void chassis_plugin_free(chassis_plugin *p) {
 if (p->option_grp_name) g_free(p->option_grp_name);
 if (p->name) g_free(p->name);
 if (p->module) g_module_close(p->module);
 if (p->version) g_free(p->version);

 g_free(p);
}
