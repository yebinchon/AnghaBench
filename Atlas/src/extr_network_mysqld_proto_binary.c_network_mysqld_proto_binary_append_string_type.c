
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_t ;
typedef int gsize ;
typedef int GString ;


 scalar_t__ network_mysqld_proto_append_lenenc_string_len (int *,char const*,int ) ;
 scalar_t__ network_mysqld_type_get_string_const (int *,char const**,int *) ;

__attribute__((used)) static int network_mysqld_proto_binary_append_string_type(GString *packet, network_mysqld_type_t *type) {
 const char *s;
 gsize s_len;
 int err = 0;

 err = err || network_mysqld_type_get_string_const(type, &s, &s_len);
 err = err || network_mysqld_proto_append_lenenc_string_len(packet, s, s_len);

 return err ? -1 : 0;
}
