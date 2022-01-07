
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef scalar_t__ gsize ;
typedef int GString ;


 int g_string_append_c (int *,int) ;

__attribute__((used)) static int network_mysqld_proto_append_int_len(GString *packet, guint64 num, gsize size) {
 gsize i;

 for (i = 0; i < size; i++) {
  g_string_append_c(packet, num & 0xff);
  num >>= 8;
 }

 return 0;
}
