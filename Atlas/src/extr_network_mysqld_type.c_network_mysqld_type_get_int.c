
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_int ) (TYPE_1__*,int *,int *) ;} ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int guint64 ;
typedef int gboolean ;


 int stub1 (TYPE_1__*,int *,int *) ;

int network_mysqld_type_get_int(network_mysqld_type_t *type, guint64 *i, gboolean *is_unsigned) {
 if (((void*)0) == type->get_int) return -1;

 return type->get_int(type, i, is_unsigned);
}
