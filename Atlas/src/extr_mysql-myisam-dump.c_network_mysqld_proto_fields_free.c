
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_4__ {size_t len; int * pdata; } ;
typedef TYPE_1__ GPtrArray ;


 int TRUE ;
 int g_ptr_array_free (TYPE_1__*,int ) ;
 int network_mysqld_proto_field_free (int ) ;

void network_mysqld_proto_fields_free(GPtrArray *fields) {
 guint i;
 if (!fields) return;

 for (i = 0; i < fields->len; i++) {
  network_mysqld_proto_field_free(fields->pdata[i]);
 }
 g_ptr_array_free(fields, TRUE);
}
