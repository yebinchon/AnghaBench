
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_binlog_dump ;


 int g_free (int *) ;

void network_mysqld_binlog_dump_free(network_mysqld_binlog_dump *dump) {
 if (!dump) return;

 g_free(dump);
}
