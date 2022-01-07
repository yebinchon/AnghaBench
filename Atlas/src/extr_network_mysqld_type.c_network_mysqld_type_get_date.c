
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_date ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int network_mysqld_type_date_t ;


 int stub1 (TYPE_1__*,int *) ;

int network_mysqld_type_get_date(network_mysqld_type_t *type, network_mysqld_type_date_t *date) {
 if (((void*)0) == type->get_date) return -1;

 return type->get_date(type, date);
}
