
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network_mysqld_type_time_t ;
struct TYPE_4__ {int (* set_time ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;


 int stub1 (TYPE_1__*,int *) ;

int network_mysqld_type_set_time(network_mysqld_type_t *type, network_mysqld_type_time_t *t) {
 if (((void*)0) == type->set_time) return -1;

 return type->set_time(type, t);
}
