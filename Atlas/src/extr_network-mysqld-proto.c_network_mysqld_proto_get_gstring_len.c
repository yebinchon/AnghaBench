
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
typedef scalar_t__ gsize ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ str; } ;
typedef int GString ;


 int g_string_append_len (int *,scalar_t__,scalar_t__) ;
 int g_string_truncate (int *,int ) ;

int network_mysqld_proto_get_gstring_len(network_packet *packet, gsize len, GString *out) {
 int err = 0;

 if (!out) return -1;

 g_string_truncate(out, 0);

 if (!len) return 0;

 err = err || (packet->offset >= packet->data->len);
 err = err || (packet->offset + len > packet->data->len);

 if (!err) {
  g_string_append_len(out, packet->data->str + packet->offset, len);
  packet->offset += len;
 }

 return err ? -1 : 0;
}
