
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt_text; } ;
typedef TYPE_1__ network_mysqld_stmt_prepare_packet_t ;
typedef int GString ;


 int COM_STMT_PREPARE ;
 int S (int ) ;
 int g_string_append_len (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int ) ;

int network_mysqld_proto_append_stmt_prepare_packet(GString *packet, network_mysqld_stmt_prepare_packet_t *stmt_prepare_packet) {
 network_mysqld_proto_append_int8(packet, COM_STMT_PREPARE);
 g_string_append_len(packet, S(stmt_prepare_packet->stmt_text));

 return 0;
}
