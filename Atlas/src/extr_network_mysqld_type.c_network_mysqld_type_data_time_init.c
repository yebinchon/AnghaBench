
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int set_time; int get_string; int get_time; int free_data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef enum enum_field_types { ____Placeholder_enum_field_types } enum_field_types ;


 int network_mysqld_type_data_time_free ;
 int network_mysqld_type_data_time_get_string ;
 int network_mysqld_type_data_time_get_time ;
 int network_mysqld_type_data_time_set_time ;

__attribute__((used)) static void network_mysqld_type_data_time_init(network_mysqld_type_t *type, enum enum_field_types field_type) {
 type->type = field_type;
 type->free_data = network_mysqld_type_data_time_free;
 type->get_time = network_mysqld_type_data_time_get_time;
 type->get_string = network_mysqld_type_data_time_get_string;
 type->set_time = network_mysqld_type_data_time_set_time;
}
