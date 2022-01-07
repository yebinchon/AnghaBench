
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rows_chunk_head; scalar_t__ fields; TYPE_1__* result_queue; } ;
typedef TYPE_2__ proxy_resultset_t ;
struct TYPE_8__ {int next; } ;
struct TYPE_6__ {int head; } ;
typedef TYPE_3__ GList ;


 int g_return_val_if_fail (int ,int) ;
 scalar_t__ network_mysqld_proto_fielddefs_new () ;
 TYPE_3__* network_mysqld_proto_get_fielddefs (int ,scalar_t__) ;

int parse_resultset_fields(proxy_resultset_t *res) {
 GList *chunk;

 g_return_val_if_fail(res->result_queue != ((void*)0), -1);

 if (res->fields) return 0;


 res->fields = network_mysqld_proto_fielddefs_new();

 if (!res->fields) return -1;

 chunk = network_mysqld_proto_get_fielddefs(res->result_queue->head, res->fields);


 if (!chunk) return -1;


 res->rows_chunk_head = chunk->next;

 return 0;
}
