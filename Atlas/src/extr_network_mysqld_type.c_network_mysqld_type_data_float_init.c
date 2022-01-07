
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int set_double; int get_double; int free_data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;


 int network_mysqld_type_data_float_free ;
 int network_mysqld_type_data_float_get_double ;
 int network_mysqld_type_data_float_set_double ;

__attribute__((used)) static void network_mysqld_type_data_float_init(network_mysqld_type_t *type, enum enum_field_types field_type) {
 type->type = field_type;
 type->free_data = network_mysqld_type_data_float_free;
 type->get_double = network_mysqld_type_data_float_get_double;
 type->set_double = network_mysqld_type_data_float_set_double;
}
