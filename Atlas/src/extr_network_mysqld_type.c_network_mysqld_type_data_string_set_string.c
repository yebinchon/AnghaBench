
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int gsize ;
typedef int GString ;


 int g_string_assign_len (int *,char const*,int ) ;
 int * g_string_sized_new (int ) ;

__attribute__((used)) static int network_mysqld_type_data_string_set_string(network_mysqld_type_t *type, const char *src, gsize src_len) {
 GString *dst;

 if (((void*)0) == type->data) {
  type->data = g_string_sized_new(src_len);
 }

 dst = type->data;

 g_string_assign_len(dst, src, src_len);

 return 0;
}
