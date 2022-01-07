
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fields; int table_name; int db_name; } ;
typedef TYPE_1__ network_mysqld_table ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;
 int network_mysqld_proto_fielddefs_free (int ) ;

void network_mysqld_table_free(network_mysqld_table *tbl) {
 if (!tbl) return;

 g_string_free(tbl->db_name, TRUE);
 g_string_free(tbl->table_name, TRUE);

 network_mysqld_proto_fielddefs_free(tbl->fields);

 g_free(tbl);
}
