
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_4__ {int type; int is_unsigned; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef int guint8 ;
typedef int guint64 ;
typedef int guint32 ;
typedef int guint16 ;







 int network_mysqld_proto_get_int16 (int *,int *) ;
 int network_mysqld_proto_get_int32 (int *,int *) ;
 int network_mysqld_proto_get_int64 (int *,int *) ;
 int network_mysqld_proto_get_int8 (int *,int *) ;
 int network_mysqld_type_set_int (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int network_mysqld_proto_binary_get_int_type(network_packet *packet, network_mysqld_type_t *type) {
 int err = 0;
 guint8 i8;
 guint16 i16;
 guint32 i32;
 guint64 i64;

 switch (type->type) {
 case 128:
  err = err || network_mysqld_proto_get_int8(packet, &i8);
  err = err || network_mysqld_type_set_int(type, (guint64)i8, type->is_unsigned);
  break;
 case 129:
  err = err || network_mysqld_proto_get_int16(packet, &i16);
  err = err || network_mysqld_type_set_int(type, (guint64)i16, type->is_unsigned);
  break;
 case 131:
 case 132:
  err = err || network_mysqld_proto_get_int32(packet, &i32);
  err = err || network_mysqld_type_set_int(type, (guint64)i32, type->is_unsigned);
  break;
 case 130:
  err = err || network_mysqld_proto_get_int64(packet, &i64);
  err = err || network_mysqld_type_set_int(type, i64, type->is_unsigned);
  break;
 default:
  err = -1;
  break;
 }

 return err ? -1 : 0;
}
