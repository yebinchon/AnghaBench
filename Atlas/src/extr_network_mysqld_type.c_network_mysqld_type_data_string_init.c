
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int set_string; int get_string_const; int free_data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;


 int network_mysqld_type_data_string_free ;
 int network_mysqld_type_data_string_get_string_const ;
 int network_mysqld_type_data_string_set_string ;

__attribute__((used)) static void network_mysqld_type_data_string_init(network_mysqld_type_t *type, enum enum_field_types field_type) {
 type->type = field_type;
 type->free_data = network_mysqld_type_data_string_free;
 type->get_string_const = network_mysqld_type_data_string_get_string_const;
 type->set_string = network_mysqld_type_data_string_set_string;
}
