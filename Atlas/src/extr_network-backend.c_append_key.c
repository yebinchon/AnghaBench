
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint ;
typedef int GString ;


 int g_string_append_c (int *,char) ;
 int g_string_append_printf (int *,char*,int) ;

void append_key(guint *key, guint *value, GString *str) {
 g_string_append_c(str, ',');
 guint sum = *key;

 g_string_append_printf(str, "%u", sum & 0x000000FF);

 guint i;
 for (i = 1; i <= 3; ++i) {
  sum >>= 8;
  g_string_append_printf(str, ".%u", sum & 0x000000FF);
 }
}
