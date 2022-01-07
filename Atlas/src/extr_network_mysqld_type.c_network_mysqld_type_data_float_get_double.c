
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef scalar_t__ network_mysqld_type_float_t ;



__attribute__((used)) static int network_mysqld_type_data_float_get_double(network_mysqld_type_t *type, double *dst) {
 network_mysqld_type_float_t *src = type->data;

 if (((void*)0) == type->data) return -1;

 *dst = (double)*src;

 return 0;
}
