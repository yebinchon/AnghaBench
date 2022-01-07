
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int warnings; int num_params; int num_columns; int stmt_id; } ;
typedef TYPE_1__ network_mysqld_stmt_prepare_ok_packet_t ;
typedef int GString ;


 int MYSQLD_PACKET_OK ;
 scalar_t__ network_mysqld_proto_append_int16 (int *,int ) ;
 scalar_t__ network_mysqld_proto_append_int32 (int *,int ) ;
 scalar_t__ network_mysqld_proto_append_int8 (int *,int) ;

int network_mysqld_proto_append_stmt_prepare_ok_packet(GString *packet, network_mysqld_stmt_prepare_ok_packet_t *stmt_prepare_ok_packet) {
 int err = 0;

 err = err || network_mysqld_proto_append_int8(packet, MYSQLD_PACKET_OK);
 err = err || network_mysqld_proto_append_int32(packet, stmt_prepare_ok_packet->stmt_id);
 err = err || network_mysqld_proto_append_int16(packet, stmt_prepare_ok_packet->num_columns);
 err = err || network_mysqld_proto_append_int16(packet, stmt_prepare_ok_packet->num_params);
 err = err || network_mysqld_proto_append_int8(packet, 0x00);
 err = err || network_mysqld_proto_append_int16(packet, stmt_prepare_ok_packet->warnings);

 return err ? -1 : 0;
}
