
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint8 ;
typedef int GString ;


 int network_mysqld_proto_append_int8 (int *,int ) ;

int network_mysqld_proto_append_packet_id(GString *_header, guint8 id) {
 return network_mysqld_proto_append_int8(_header, id);
}
