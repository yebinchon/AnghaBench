
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint64 ;
typedef int GString ;


 int network_mysqld_proto_append_int_len (int *,int ,int) ;

int network_mysqld_proto_append_int64(GString *packet, guint64 num) {
 return network_mysqld_proto_append_int_len(packet, num, 8);
}
