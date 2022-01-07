
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
typedef int network_mysqld_lenenc_type ;
typedef size_t guint ;
struct TYPE_4__ {size_t len; scalar_t__ str; } ;


 int NETWORK_MYSQLD_LENENC_TYPE_EOF ;
 int NETWORK_MYSQLD_LENENC_TYPE_ERR ;
 int NETWORK_MYSQLD_LENENC_TYPE_INT ;
 int NETWORK_MYSQLD_LENENC_TYPE_NULL ;
 int g_return_val_if_fail (int,int) ;

int network_mysqld_proto_peek_lenenc_type(network_packet *packet, network_mysqld_lenenc_type *type) {
 guint off = packet->offset;
 unsigned char *bytestream = (unsigned char *)packet->data->str;

 g_return_val_if_fail(off < packet->data->len, -1);

 if (bytestream[off] < 251) {
  *type = NETWORK_MYSQLD_LENENC_TYPE_INT;
 } else if (bytestream[off] == 251) {
  *type = NETWORK_MYSQLD_LENENC_TYPE_NULL;
 } else if (bytestream[off] == 252) {
  *type = NETWORK_MYSQLD_LENENC_TYPE_INT;
 } else if (bytestream[off] == 253) {
  *type = NETWORK_MYSQLD_LENENC_TYPE_INT;
 } else if (bytestream[off] == 254) {
  if (off == 4 &&
      packet->data->len - packet->offset < 8) {
   *type = NETWORK_MYSQLD_LENENC_TYPE_EOF;
  } else {
   *type = NETWORK_MYSQLD_LENENC_TYPE_INT;
  }
 } else {
  *type = NETWORK_MYSQLD_LENENC_TYPE_ERR;
 }

 return 0;
}
