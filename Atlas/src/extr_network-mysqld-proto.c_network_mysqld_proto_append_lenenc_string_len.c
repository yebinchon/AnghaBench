
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef int gchar ;
typedef int GString ;


 int g_string_append_c (int *,int ) ;
 int g_string_append_len (int *,char const*,int ) ;
 int network_mysqld_proto_append_lenenc_int (int *,int ) ;

int network_mysqld_proto_append_lenenc_string_len(GString *packet, const char *s, guint64 length) {
 if (!s) {
  g_string_append_c(packet, (gchar)251);
 } else {
  network_mysqld_proto_append_lenenc_int(packet, length);
  g_string_append_len(packet, s, length);
 }

 return 0;
}
