
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* backend; } ;
typedef TYPE_3__ network_mysqld_con_lua_t ;
struct TYPE_11__ {scalar_t__ data; int (* data_free ) (scalar_t__) ;} ;
struct TYPE_14__ {scalar_t__ len; scalar_t__ challenge; struct TYPE_14__* merge_res; struct TYPE_14__* rows; int locks; scalar_t__ charset_connection; scalar_t__ charset_results; scalar_t__ charset_client; TYPE_3__* plugin_con_state; scalar_t__ client; scalar_t__ server; TYPE_1__ parse; } ;
typedef TYPE_4__ network_mysqld_con ;
typedef scalar_t__ guint ;
struct TYPE_12__ {int connected_clients; } ;
typedef TYPE_4__ GPtrArray ;


 int TRUE ;
 int g_atomic_int_compare_and_exchange (int *,int ,int ) ;
 int g_atomic_int_dec_and_test (int *) ;
 int g_free (TYPE_4__*) ;
 int g_hash_table_destroy (int ) ;
 int g_hash_table_remove_all (int ) ;
 int g_ptr_array_free (TYPE_4__*,int ) ;
 TYPE_4__* g_ptr_array_index (TYPE_4__*,scalar_t__) ;
 int g_string_free (scalar_t__,int ) ;
 int network_socket_free (scalar_t__) ;
 int stub1 (scalar_t__) ;

void network_mysqld_con_free(network_mysqld_con *con) {
 if (!con) return;

 if (con->parse.data && con->parse.data_free) {
  con->parse.data_free(con->parse.data);
 }

 if (con->server) network_socket_free(con->server);
 if (con->client) network_socket_free(con->client);

    network_mysqld_con_lua_t *st = con->plugin_con_state;
    if (st && st->backend) {
        if (!g_atomic_int_compare_and_exchange(&st->backend->connected_clients, 0, 0)) {
            g_atomic_int_dec_and_test(&st->backend->connected_clients);

        }
    }







 g_string_free(con->charset_client, TRUE);
 g_string_free(con->charset_results, TRUE);
 g_string_free(con->charset_connection, TRUE);

 g_hash_table_remove_all(con->locks);
 g_hash_table_destroy(con->locks);

 if (con->merge_res) {
  GPtrArray* rows = con->merge_res->rows;
  if (rows) {
   guint i;
   for (i = 0; i < rows->len; ++i) {
    GPtrArray* row = g_ptr_array_index(rows, i);
    guint j;
    for (j = 0; j < row->len; ++j) {
     g_free(g_ptr_array_index(row, j));
    }
    g_ptr_array_free(row, TRUE);
   }
   g_ptr_array_free(rows, TRUE);
  }
  g_free(con->merge_res);
 }

 if (con->challenge) g_string_free(con->challenge, TRUE);

 g_free(con);
}
