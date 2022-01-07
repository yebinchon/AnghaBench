
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef float network_mysqld_type_float_t ;


 float* network_mysqld_type_float_new () ;

__attribute__((used)) static int network_mysqld_type_data_float_set_double(network_mysqld_type_t *type, double src) {
 network_mysqld_type_float_t *dst = type->data;

 if (((void*)0) == type->data) {
  type->data = network_mysqld_type_float_new();
 }

 dst = type->data;
 *dst = (float)src;

 return 0;
}
