
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t gsize ;
typedef int gchar ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ chassis_plugin ;
struct TYPE_8__ {TYPE_1__* modules; } ;
typedef TYPE_3__ chassis ;
struct TYPE_6__ {size_t len; TYPE_2__** pdata; } ;


 int strcmp (int ,int *) ;

chassis_plugin* chassis_plugin_for_name(chassis *chas, gchar* plugin_name) {
    gsize i;

    if (!chas || !plugin_name) return ((void*)0);


 for (i = 0; i < chas->modules->len; i++) {
  chassis_plugin *p = chas->modules->pdata[i];
        if (!strcmp(p->name, plugin_name)) {
            return p;
        }
 }
    return ((void*)0);

}
