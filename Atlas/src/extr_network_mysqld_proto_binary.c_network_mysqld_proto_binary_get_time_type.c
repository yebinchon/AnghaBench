
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
typedef int network_packet ;
struct TYPE_4__ {int sign; int hour; int min; int sec; int nsec; int days; } ;
typedef TYPE_1__ network_mysqld_type_time_t ;
typedef int network_mysqld_type_t ;
typedef int guint8 ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int*) ;
 scalar_t__ network_mysqld_type_set_time (int *,TYPE_1__*) ;

__attribute__((used)) static int network_mysqld_proto_binary_get_time_type(network_packet *packet, network_mysqld_type_t *type) {
 int err = 0;
 guint8 len;
 network_mysqld_type_time_t t;

 err = err || network_mysqld_proto_get_int8(packet, &len);



 switch (len) {
 case 12:
 case 8:
 case 0:
  break;
 default:
  return -1;
 }

 memset(&t, 0, sizeof(t));
 if (len > 0) {
  err = err || network_mysqld_proto_get_int8(packet, &t.sign);
  err = err || network_mysqld_proto_get_int32(packet, &t.days);

  err = err || network_mysqld_proto_get_int8(packet, &t.hour);
  err = err || network_mysqld_proto_get_int8(packet, &t.min);
  err = err || network_mysqld_proto_get_int8(packet, &t.sec);

  if (len > 8) {
   err = err || network_mysqld_proto_get_int32(packet, &t.nsec);
  }
 }

 if (0 == err) {
  err = err || network_mysqld_type_set_time(type, &t);
 }

 return err ? -1 : 0;
}
