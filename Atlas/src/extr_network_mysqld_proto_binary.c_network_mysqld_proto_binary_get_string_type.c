
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int network_mysqld_type_t ;
typedef int GString ;


 int S (int *) ;
 int TRUE ;
 int g_string_free (int *,int ) ;
 int * g_string_new (int *) ;
 scalar_t__ network_mysqld_proto_get_lenenc_gstring (int *,int *) ;
 int network_mysqld_type_set_string (int *,int ) ;

__attribute__((used)) static int network_mysqld_proto_binary_get_string_type(network_packet *packet, network_mysqld_type_t *type) {
 GString *str;
 int err = 0;

 str = g_string_new(((void*)0));

 err = err || network_mysqld_proto_get_lenenc_gstring(packet, str);

 network_mysqld_type_set_string(type, S(str));

 g_string_free(str, TRUE);

 return err ? -1 : 0;
}
