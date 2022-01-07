
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; TYPE_1__* data; } ;
typedef TYPE_2__ network_packet ;
typedef scalar_t__ gsize ;
struct TYPE_4__ {scalar_t__ len; } ;



int network_mysqld_proto_skip(network_packet *packet, gsize size) {
 if (packet->offset + size > packet->data->len) return -1;

 packet->offset += size;

 return 0;
}
