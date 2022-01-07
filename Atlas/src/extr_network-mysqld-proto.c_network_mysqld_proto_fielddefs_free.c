
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_4__ {size_t len; int ** pdata; } ;
typedef int MYSQL_FIELD ;
typedef TYPE_1__ GPtrArray ;


 int TRUE ;
 int g_ptr_array_free (TYPE_1__*,int ) ;
 int network_mysqld_proto_fielddef_free (int *) ;

void network_mysqld_proto_fielddefs_free(GPtrArray *fields) {
 guint i;

 for (i = 0; i < fields->len; i++) {
  MYSQL_FIELD *field = fields->pdata[i];

  if (field) network_mysqld_proto_fielddef_free(field);
 }

 g_ptr_array_free(fields, TRUE);
}
