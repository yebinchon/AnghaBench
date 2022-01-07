
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_5__ {int is_null; } ;
typedef TYPE_1__ network_mysqld_proto_field ;
typedef size_t guint ;
struct TYPE_6__ {size_t len; TYPE_1__** pdata; } ;
typedef TYPE_2__ GPtrArray ;


 scalar_t__ network_mysqld_proto_field_get (int *,TYPE_1__*) ;

int network_mysqld_proto_fields_get(network_packet *packet, GPtrArray *fields) {
 guint i;

 for (i = 0; i < fields->len; i++) {
  network_mysqld_proto_field *field = fields->pdata[i];

  if (!field->is_null) {
   if (network_mysqld_proto_field_get(packet, field)) return -1;
  }
 }

 return 0;
}
