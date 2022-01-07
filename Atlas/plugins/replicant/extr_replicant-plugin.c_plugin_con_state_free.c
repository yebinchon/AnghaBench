
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* binlog_file; } ;
typedef TYPE_1__ plugin_con_state ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void plugin_con_state_free(plugin_con_state *st) {
 if (!st) return;

 if (st->binlog_file) g_free(st->binlog_file);

 g_free(st);
}
