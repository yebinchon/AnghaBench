
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int binlog_file; int server_id; int flags; int binlog_pos; } ;
typedef TYPE_1__ network_mysqld_binlog_dump ;
typedef int GString ;


 int COM_BINLOG_DUMP ;
 int g_string_append (int *,int ) ;
 int network_mysqld_proto_append_int16 (int *,int ) ;
 int network_mysqld_proto_append_int32 (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int ) ;

int network_mysqld_proto_append_binlog_dump(GString *packet, network_mysqld_binlog_dump *dump) {
 network_mysqld_proto_append_int8(packet, COM_BINLOG_DUMP);
 network_mysqld_proto_append_int32(packet, dump->binlog_pos);
 network_mysqld_proto_append_int16(packet, dump->flags);
 network_mysqld_proto_append_int32(packet, dump->server_id);
 g_string_append(packet, dump->binlog_file);
 network_mysqld_proto_append_int8(packet, 0);

 return 0;
}
