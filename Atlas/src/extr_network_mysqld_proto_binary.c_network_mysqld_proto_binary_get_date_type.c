
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network_packet ;
typedef int network_mysqld_type_t ;
struct TYPE_4__ {int month; int day; int hour; int min; int sec; int nsec; int year; } ;
typedef TYPE_1__ network_mysqld_type_date_t ;
typedef int guint8 ;
typedef int date ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ network_mysqld_proto_get_int16 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,int*) ;
 scalar_t__ network_mysqld_type_set_date (int *,TYPE_1__*) ;

__attribute__((used)) static int network_mysqld_proto_binary_get_date_type(network_packet *packet, network_mysqld_type_t *type) {
 int err = 0;
 guint8 len;
 network_mysqld_type_date_t date;

 err = err || network_mysqld_proto_get_int8(packet, &len);



 switch (len) {
 case 11:
 case 7:
 case 4:
 case 0:
  break;
 default:
  return -1;
 }

 memset(&date, 0, sizeof(date));
 if (len > 0) {
  err = err || network_mysqld_proto_get_int16(packet, &date.year);
  err = err || network_mysqld_proto_get_int8(packet, &date.month);
  err = err || network_mysqld_proto_get_int8(packet, &date.day);

  if (len > 4) {
   err = err || network_mysqld_proto_get_int8(packet, &date.hour);
   err = err || network_mysqld_proto_get_int8(packet, &date.min);
   err = err || network_mysqld_proto_get_int8(packet, &date.sec);

   if (len > 7) {
    err = err || network_mysqld_proto_get_int32(packet, &date.nsec);
   }
  }
 }

 if (0 == err) {
  err = err || network_mysqld_type_set_date(type, &date);
 }

 return err ? -1 : 0;
}
