
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* set_double ) (TYPE_1__*,double) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;


 int stub1 (TYPE_1__*,double) ;

int network_mysqld_type_set_double(network_mysqld_type_t *type, double d) {
 if (((void*)0) == type->set_double) return -1;

 return type->set_double(type, d);
}
