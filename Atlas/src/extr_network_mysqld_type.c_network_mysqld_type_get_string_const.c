
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_string_const ) (TYPE_1__*,char const**,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int gsize ;


 int stub1 (TYPE_1__*,char const**,int *) ;

int network_mysqld_type_get_string_const(network_mysqld_type_t *type, const char **s, gsize *s_len) {
 if (((void*)0) == type->get_string_const) return -1;

 return type->get_string_const(type, s, s_len);
}
