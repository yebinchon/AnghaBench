
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* org_table; struct TYPE_4__* table; struct TYPE_4__* org_name; struct TYPE_4__* name; struct TYPE_4__* db; struct TYPE_4__* catalog; } ;
typedef TYPE_1__ MYSQL_FIELD ;


 int g_free (TYPE_1__*) ;

void network_mysqld_proto_fielddef_free(MYSQL_FIELD *field) {
 if (field->catalog) g_free(field->catalog);
 if (field->db) g_free(field->db);
 if (field->name) g_free(field->name);
 if (field->org_name) g_free(field->org_name);
 if (field->table) g_free(field->table);
 if (field->org_table) g_free(field->org_table);

 g_free(field);
}
