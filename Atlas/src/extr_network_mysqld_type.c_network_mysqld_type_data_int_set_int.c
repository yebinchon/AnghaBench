
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
struct TYPE_6__ {int is_unsigned; int i; } ;
typedef TYPE_2__ network_mysqld_type_int_t ;
typedef int guint64 ;
typedef int gboolean ;


 TYPE_2__* network_mysqld_type_int_new () ;

__attribute__((used)) static int network_mysqld_type_data_int_set_int(network_mysqld_type_t *type, guint64 i, gboolean is_unsigned) {
 network_mysqld_type_int_t *value;

 if (((void*)0) == type->data) {
  type->data = network_mysqld_type_int_new();
 }
 value = type->data;

 value->i = i;
 value->is_unsigned = is_unsigned;

 return 0;
}
