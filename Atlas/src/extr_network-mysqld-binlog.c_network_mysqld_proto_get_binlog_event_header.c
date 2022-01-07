
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_3__ {int event_type; int flags; int log_pos; int event_size; int server_id; int timestamp; } ;
typedef TYPE_1__ network_mysqld_binlog_event ;
typedef int guint8 ;


 scalar_t__ network_mysqld_proto_get_int16 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int *) ;

int network_mysqld_proto_get_binlog_event_header(network_packet *packet, network_mysqld_binlog_event *event) {
 int err = 0;
 guint8 event_type;

 err = err || network_mysqld_proto_get_int32(packet, &event->timestamp);
 err = err || network_mysqld_proto_get_int8(packet, &event_type);
 err = err || network_mysqld_proto_get_int32(packet, &event->server_id);
 err = err || network_mysqld_proto_get_int32(packet, &event->event_size);
 err = err || network_mysqld_proto_get_int32(packet, &event->log_pos);
 err = err || network_mysqld_proto_get_int16(packet, &event->flags);

 if (!err) {


  event->event_type = event_type;
 }

 return err ? -1 : 0;
}
