
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_packet ;
typedef int guint64 ;
typedef int GString ;


 scalar_t__ network_mysqld_proto_get_gstring_len (int *,int ,int *) ;
 scalar_t__ network_mysqld_proto_get_lenenc_int (int *,int *) ;

int network_mysqld_proto_get_lenenc_gstring(network_packet *packet, GString *out) {
 guint64 len;
 int err = 0;

 err = err || network_mysqld_proto_get_lenenc_int(packet, &len);
 err = err || network_mysqld_proto_get_gstring_len(packet, len, out);

 return err ? -1 : 0;
}
