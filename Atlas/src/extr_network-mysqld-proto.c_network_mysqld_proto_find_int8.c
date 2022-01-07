
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_1__ network_packet ;
typedef scalar_t__ guint8 ;
typedef scalar_t__ guint ;


 scalar_t__ network_mysqld_proto_get_int8 (TYPE_1__*,scalar_t__*) ;

int network_mysqld_proto_find_int8(network_packet *packet, guint8 c, guint *pos) {
 int err = 0;
 guint off = packet->offset;

 while (!err) {
  guint8 _c;

  err = err || network_mysqld_proto_get_int8(packet, &_c);
  if (!err) {
   if (c == _c) {
    *pos = packet->offset - off;
    break;
   }
  }
 }

 packet->offset = off;

 return err;
}
