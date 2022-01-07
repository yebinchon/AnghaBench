
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
struct TYPE_5__ {int is_unsigned; int i; } ;
typedef TYPE_2__ network_mysqld_type_int_t ;
typedef int guint64 ;
typedef int gboolean ;



__attribute__((used)) static int network_mysqld_type_data_int_get_int(network_mysqld_type_t *type, guint64 *i, gboolean *is_unsigned) {
 network_mysqld_type_int_t *value;

 if (((void*)0) == type->data) return -1;

 value = type->data;

 *i = value->i;
 *is_unsigned = value->is_unsigned;

 return 0;
}
