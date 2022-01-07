
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_20__ {TYPE_2__* recv_queue; } ;
typedef TYPE_5__ network_socket ;
typedef int network_mysqld_lua_stmt_ret ;
struct TYPE_19__ {TYPE_13__* queries; } ;
struct TYPE_21__ {TYPE_4__ injected; int * L; } ;
typedef TYPE_6__ network_mysqld_con_lua_t ;
struct TYPE_22__ {TYPE_5__* client; TYPE_3__* config; void* state; TYPE_6__* plugin_con_state; } ;
typedef TYPE_7__ network_mysqld_con ;
typedef int lua_State ;
struct TYPE_24__ {TYPE_8__* data; } ;
struct TYPE_23__ {int len; char* str; } ;
struct TYPE_18__ {int lua_script; } ;
struct TYPE_17__ {TYPE_1__* chunks; } ;
struct TYPE_16__ {TYPE_9__* head; } ;
struct TYPE_15__ {int length; } ;
typedef TYPE_8__ GString ;
typedef TYPE_9__ GList ;


 int C (char*) ;
 char COM_QUERY ;
 void* CON_STATE_SEND_ERROR ;
 int NET_HEADER_SIZE ;

 int PROXY_SEND_INJECTION ;





 scalar_t__ g_ascii_strncasecmp (char*,int ) ;
 int g_assert (scalar_t__) ;
 int g_critical (char*,int ) ;
 int lua_getfenv (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getfield_literal (int *,int,int ) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int network_injection_queue_reset (TYPE_13__*) ;
 int network_mysqld_con_lua_handle_proxy_response (TYPE_7__*,int ) ;
 int network_mysqld_con_lua_register_callback (TYPE_7__*,int ) ;
 int network_mysqld_con_send_error (TYPE_5__*,int ) ;

__attribute__((used)) static network_mysqld_lua_stmt_ret admin_lua_read_query(network_mysqld_con *con) {
 network_mysqld_con_lua_t *st = con->plugin_con_state;
 char command = -1;
 network_socket *recv_sock = con->client;
 GList *chunk = recv_sock->recv_queue->chunks->head;
 GString *packet = chunk->data;

 if (packet->len < NET_HEADER_SIZE) return 132;

 command = packet->str[NET_HEADER_SIZE + 0];

 if (COM_QUERY == command) {

  if (packet->len < NET_HEADER_SIZE + 2) return 132;


  if (packet->len - NET_HEADER_SIZE - 1 >= sizeof("LOAD ") - 1 &&
      0 == g_ascii_strncasecmp(packet->str + NET_HEADER_SIZE + 1, C("LOAD "))) return 132;
 }

 network_injection_queue_reset(st->injected.queries);
 return 133;
}
