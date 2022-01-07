
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef double network_mysqld_type_double_t ;



__attribute__((used)) static int network_mysqld_type_data_double_get_double(network_mysqld_type_t *type, double *d) {
 network_mysqld_type_double_t *value = type->data;

 if (((void*)0) == value) return -1;

 *d = *value;

 return 0;
}
