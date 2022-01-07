
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* lua_script; struct TYPE_4__* admin_password; struct TYPE_4__* admin_username; struct TYPE_4__* address; scalar_t__ listen_con; } ;
typedef TYPE_1__ chassis_plugin_config ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void network_mysqld_admin_plugin_free(chassis_plugin_config *config) {
 if (config->listen_con) {

 }

 if (config->address) {
  g_free(config->address);
 }

 if (config->admin_username) g_free(config->admin_username);
 if (config->admin_password) g_free(config->admin_password);
 if (config->lua_script) g_free(config->lua_script);

 g_free(config);
}
