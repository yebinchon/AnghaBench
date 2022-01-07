
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int str; int len; } ;
typedef TYPE_1__ GString ;


 int g_string_assign (TYPE_1__*,int ) ;
 TYPE_1__* g_string_sized_new (int ) ;

GString *g_string_dup(GString *src) {
 GString *dst = g_string_sized_new(src->len);

 g_string_assign(dst, src->str);

 return dst;
}
