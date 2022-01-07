
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ network_mysqld_type_t ;
typedef void* guint8 ;
typedef void* guint64 ;
typedef void* guint32 ;
typedef void* guint16 ;
typedef int GString ;







 int network_mysqld_proto_append_int16 (int *,void*) ;
 int network_mysqld_proto_append_int32 (int *,void*) ;
 int network_mysqld_proto_append_int64 (int *,void*) ;
 int network_mysqld_proto_append_int8 (int *,void*) ;
 scalar_t__ network_mysqld_type_get_int (TYPE_1__*,void**,int *) ;

__attribute__((used)) static int network_mysqld_proto_binary_append_int_type(GString *packet, network_mysqld_type_t *type) {
 guint64 i64;
 guint8 i8;
 guint16 i16;
 guint32 i32;
 int err = 0;

 err = err || network_mysqld_type_get_int(type, &i64, ((void*)0));
 if (0 != err) return -1;

 switch (type->type) {
 case 128:

  i8 = i64;

  err = err || network_mysqld_proto_append_int8(packet, i8);
  break;
 case 129:
  i16 = i64;

  err = err || network_mysqld_proto_append_int16(packet, i16);
  break;
 case 131:
 case 132:
  i32 = i64;

  err = err || network_mysqld_proto_append_int32(packet, i32);
  break;
 case 130:
  err = err || network_mysqld_proto_append_int64(packet, i64);
  break;
 default:
  err = -1;
  break;
 }

 return err ? -1 : 0;
}
