
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char guint8 ;
struct TYPE_3__ {scalar_t__ str; } ;
typedef TYPE_1__ GString ;



int network_mysqld_proto_set_packet_id(GString *_header, guint8 id) {
 unsigned char *header = (unsigned char *)_header->str;

 header[3] = id;

 return 0;
}
