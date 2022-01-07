
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_gstring ) (TYPE_1__*,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int GString ;


 int stub1 (TYPE_1__*,int *) ;

int network_mysqld_type_get_gstring(network_mysqld_type_t *type, GString *s) {
 if (((void*)0) == type->get_gstring) return -1;

 return type->get_gstring(type, s);
}
