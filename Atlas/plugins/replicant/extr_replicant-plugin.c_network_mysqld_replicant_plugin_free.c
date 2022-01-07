
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ read_binlogs; struct TYPE_7__* mysqld_password; struct TYPE_7__* mysqld_username; struct TYPE_7__* master_address; TYPE_4__* listen_con; } ;
typedef TYPE_2__ chassis_plugin_config ;
struct TYPE_8__ {TYPE_1__* server; } ;
struct TYPE_6__ {int event; } ;


 int event_del (int *) ;
 int g_free (TYPE_2__*) ;
 int g_strfreev (scalar_t__) ;
 int network_mysqld_con_free (TYPE_4__*) ;

void network_mysqld_replicant_plugin_free(chassis_plugin_config *config) {
 if (config->listen_con) {







 }

 if (config->master_address) {

  g_free(config->master_address);
 }

 if (config->mysqld_username) g_free(config->mysqld_username);
 if (config->mysqld_password) g_free(config->mysqld_password);
 if (config->read_binlogs) g_strfreev(config->read_binlogs);

 g_free(config);
}
