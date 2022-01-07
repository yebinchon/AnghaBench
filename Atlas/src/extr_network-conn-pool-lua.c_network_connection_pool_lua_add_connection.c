
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_16__ {int backend_ndx; TYPE_10__* backend; } ;
typedef TYPE_5__ network_mysqld_con_lua_t ;
struct TYPE_17__ {TYPE_9__* server; int srv; TYPE_5__* plugin_con_state; } ;
typedef TYPE_6__ network_mysqld_con ;
typedef int network_connection_pool_entry ;
typedef int network_connection_pool ;
struct TYPE_19__ {int is_authed; int event; int fd; TYPE_7__* response; TYPE_4__* dst; TYPE_2__* src; } ;
struct TYPE_18__ {int username; } ;
struct TYPE_15__ {TYPE_3__* name; } ;
struct TYPE_14__ {int str; } ;
struct TYPE_13__ {TYPE_1__* name; } ;
struct TYPE_12__ {int str; } ;
struct TYPE_11__ {int connected_clients; } ;


 int C (char*) ;
 int EV_READ ;
 int G_STRLOC ;
 int chassis_event_add_local (int ,int *) ;
 int * chassis_event_thread_pool (TYPE_10__*) ;
 int event_set (int *,int ,int ,int ,int *) ;
 int g_atomic_int_compare_and_exchange (int *,int ,int ) ;
 int g_atomic_int_dec_and_test (int *) ;
 int g_string_assign_len (int ,int ) ;
 int g_warning (char*,int ,int ,int ) ;
 int * network_connection_pool_add (int *,TYPE_9__*) ;
 TYPE_7__* network_mysqld_auth_response_new () ;
 int network_mysqld_con_idle_handle ;

int network_connection_pool_lua_add_connection(network_mysqld_con *con) {
 network_connection_pool_entry *pool_entry = ((void*)0);
 network_mysqld_con_lua_t *st = con->plugin_con_state;


 if (!con->server) return 0;





    if(!con->server->response)
    {
        g_warning("%s: (remove) remove socket from pool, response is NULL, src is %s, dst is %s",
            G_STRLOC, con->server->src->name->str, con->server->dst->name->str);

        con->server->response = network_mysqld_auth_response_new();
        g_string_assign_len(con->server->response->username, C("mysql_proxy_invalid_user"));
    }


 con->server->is_authed = 1;


 network_connection_pool* pool = chassis_event_thread_pool(st->backend);
 pool_entry = network_connection_pool_add(pool, con->server);

 if (pool_entry) {
  event_set(&(con->server->event), con->server->fd, EV_READ, network_mysqld_con_idle_handle, pool_entry);
  chassis_event_add_local(con->srv, &(con->server->event));
 }

    if (!g_atomic_int_compare_and_exchange(&st->backend->connected_clients, 0, 0)) {
        g_atomic_int_dec_and_test(&st->backend->connected_clients);

    }


 st->backend = ((void*)0);
 st->backend_ndx = -1;

 con->server = ((void*)0);

 return 0;
}
