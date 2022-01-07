
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int gsize ;
struct TYPE_5__ {char* str; int len; } ;
typedef TYPE_2__ GString ;



__attribute__((used)) static int network_mysqld_type_data_string_get_string_const(network_mysqld_type_t *type, const char **dst, gsize *dst_len) {
 GString *src = type->data;

 if (((void*)0) == type->data) return -1;

 *dst = src->str;
 *dst_len = src->len;

 return 0;
}
