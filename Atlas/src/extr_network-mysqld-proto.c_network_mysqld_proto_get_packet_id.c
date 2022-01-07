
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char guint8 ;
struct TYPE_3__ {scalar_t__ str; } ;
typedef TYPE_1__ GString ;



guint8 network_mysqld_proto_get_packet_id(GString *_header) {
 unsigned char *header = (unsigned char *)_header->str;

 return header[3];
}
