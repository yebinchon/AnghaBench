
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint32 ;
typedef int GString ;


 int network_mysqld_proto_append_int24 (int *,int ) ;

int network_mysqld_proto_append_packet_len(GString *_header, guint32 length) {
 return network_mysqld_proto_append_int24(_header, length);
}
