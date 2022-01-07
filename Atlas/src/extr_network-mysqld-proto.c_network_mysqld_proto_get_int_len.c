
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ network_packet ;
typedef int guint64 ;
typedef scalar_t__ gsize ;


 scalar_t__ network_mysqld_proto_peek_int_len (TYPE_1__*,int *,scalar_t__) ;

int network_mysqld_proto_get_int_len(network_packet *packet, guint64 *v, gsize size) {
 int err = 0;

 err = err || network_mysqld_proto_peek_int_len(packet, v, size);

 if (err) return -1;

 packet->offset += size;

 return 0;
}
