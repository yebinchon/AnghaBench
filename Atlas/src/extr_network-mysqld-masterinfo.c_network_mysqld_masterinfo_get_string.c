
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
typedef size_t guint ;
struct TYPE_8__ {size_t len; char* str; } ;
typedef TYPE_2__ GString ;


 int g_return_val_if_fail (TYPE_2__*,int) ;
 int g_string_assign_len (TYPE_2__*,char*,size_t) ;

__attribute__((used)) static int network_mysqld_masterinfo_get_string(network_packet *packet, GString *str) {
 guint i;

 g_return_val_if_fail(packet, -1);
 g_return_val_if_fail(str, -1);

 for (i = packet->offset; i < packet->data->len; i++) {
  const char c = packet->data->str[i];

  if (c == '\n') break;
 }

 if (packet->data->str[i] == '\n') {
  g_string_assign_len(str, packet->data->str + packet->offset, i - packet->offset);

  packet->offset = i + 1;

  return 0;
 }

 return -1;
}
