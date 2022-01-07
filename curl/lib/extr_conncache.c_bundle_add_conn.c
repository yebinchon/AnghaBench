
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connectdata {struct connectbundle* bundle; int bundle_node; } ;
struct TYPE_2__ {int tail; } ;
struct connectbundle {int num_connections; TYPE_1__ conn_list; } ;


 int Curl_llist_insert_next (TYPE_1__*,int ,struct connectdata*,int *) ;

__attribute__((used)) static void bundle_add_conn(struct connectbundle *cb_ptr,
                            struct connectdata *conn)
{
  Curl_llist_insert_next(&cb_ptr->conn_list, cb_ptr->conn_list.tail, conn,
                         &conn->bundle_node);
  conn->bundle = cb_ptr;
  cb_ptr->num_connections++;
}
