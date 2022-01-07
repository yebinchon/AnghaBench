
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt_id; } ;
typedef TYPE_1__ network_mysqld_stmt_close_packet_t ;
typedef int GString ;


 int COM_STMT_CLOSE ;
 int network_mysqld_proto_append_int32 (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int ) ;

int network_mysqld_proto_append_stmt_close_packet(GString *packet, network_mysqld_stmt_close_packet_t *stmt_close_packet) {
 network_mysqld_proto_append_int8(packet, COM_STMT_CLOSE);
 network_mysqld_proto_append_int32(packet, stmt_close_packet->stmt_id);

 return 0;
}
