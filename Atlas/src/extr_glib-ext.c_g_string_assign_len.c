
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef int GString ;


 int * g_string_append_len (int *,char const*,int ) ;
 int g_string_truncate (int *,int ) ;

GString * g_string_assign_len(GString *s, const char *str, gsize str_len) {
 g_string_truncate(s, 0);
 return g_string_append_len(s, str, str_len);
}
