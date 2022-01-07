
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_string ) (TYPE_1__*,char**,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int gsize ;


 int stub1 (TYPE_1__*,char**,int *) ;

int network_mysqld_type_get_string(network_mysqld_type_t *type, char **s, gsize *s_len) {
 if (((void*)0) == type->get_string) return -1;

 return type->get_string(type, s, s_len);
}
