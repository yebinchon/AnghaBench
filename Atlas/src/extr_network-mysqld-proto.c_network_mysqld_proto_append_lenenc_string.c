
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GString ;


 int network_mysqld_proto_append_lenenc_string_len (int *,char const*,int ) ;
 int strlen (char const*) ;

int network_mysqld_proto_append_lenenc_string(GString *packet, const char *s) {
 return network_mysqld_proto_append_lenenc_string_len(packet, s, s ? strlen(s) : 0);
}
