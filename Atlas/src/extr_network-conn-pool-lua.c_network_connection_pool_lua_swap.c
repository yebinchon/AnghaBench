
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int network_socket ;
struct TYPE_17__ {int backend_ndx; TYPE_7__* backend; } ;
typedef TYPE_5__ network_mysqld_con_lua_t ;
struct TYPE_18__ {TYPE_4__* client; TYPE_1__* srv; TYPE_5__* plugin_con_state; } ;
typedef TYPE_6__ network_mysqld_con ;
typedef int network_connection_pool ;
struct TYPE_19__ {int connected_clients; } ;
typedef TYPE_7__ network_backend_t ;
struct TYPE_16__ {TYPE_3__* response; } ;
struct TYPE_15__ {TYPE_2__* username; } ;
struct TYPE_14__ {char* str; } ;
struct TYPE_13__ {int backends; } ;
typedef int GHashTable ;


 int G_STRLOC ;
 int * chassis_event_thread_pool (TYPE_7__*) ;
 int g_atomic_int_compare_and_exchange (int *,int ,int ) ;
 int g_atomic_int_dec_and_test (int *) ;
 int g_debug (char*,int ,...) ;
 TYPE_7__* network_backends_get (int ,int) ;
 int * network_connection_pool_get (int *) ;
 int * self_connect (TYPE_6__*,TYPE_7__*,int *) ;

network_socket *network_connection_pool_lua_swap(network_mysqld_con *con, int backend_ndx, GHashTable *pwd_table) {
 network_backend_t *backend = ((void*)0);
 network_socket *send_sock;
 network_mysqld_con_lua_t *st = con->plugin_con_state;







 backend = network_backends_get(con->srv->backends, backend_ndx);
 if (!backend) return ((void*)0);
       int flag = 0;
 network_connection_pool* pool = chassis_event_thread_pool(backend);
 if (((void*)0) == (send_sock = network_connection_pool_get(pool))) {



        flag = 1;
  if (((void*)0) == (send_sock = self_connect(con, backend, pwd_table))) {
   st->backend_ndx = -1;
   return ((void*)0);
  }
 }
 st->backend = backend;

 st->backend_ndx = backend_ndx;

        if (flag == 0 && !g_atomic_int_compare_and_exchange(&st->backend->connected_clients, 0, 0)) {
            g_atomic_int_dec_and_test(&st->backend->connected_clients);

        }

 return send_sock;
}
