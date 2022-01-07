
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rbr_tables; } ;
typedef TYPE_1__ network_mysqld_binlog ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;

void network_mysqld_binlog_free(network_mysqld_binlog *binlog) {
 if (!binlog) return;

 g_hash_table_destroy(binlog->rbr_tables);

 g_free(binlog);
}
