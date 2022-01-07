
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
typedef scalar_t__ guint64 ;
struct TYPE_6__ {scalar_t__ len; char* str; } ;
typedef int GString ;


 int g_assert (int) ;
 scalar_t__ network_mysqld_proto_get_gstring_len (TYPE_2__*,scalar_t__,int *) ;
 scalar_t__ network_mysqld_proto_skip (TYPE_2__*,int) ;

int network_mysqld_proto_get_gstring(network_packet *packet, GString *out) {
 guint64 len;
 int err = 0;

 for (len = 0; packet->offset + len < packet->data->len && *(packet->data->str + packet->offset + len) != '\0'; len++);

 if (packet->offset + len == packet->data->len) {
  return -1;
 }

 if (len > 0) {
  g_assert(packet->offset < packet->data->len);
  g_assert(packet->offset + len <= packet->data->len);

  err = err || network_mysqld_proto_get_gstring_len(packet, len, out);
 }


 err = err || network_mysqld_proto_skip(packet, 1);

 return err ? -1 : 0;
}
