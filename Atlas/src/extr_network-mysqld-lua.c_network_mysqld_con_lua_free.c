
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queries; } ;
struct TYPE_6__ {TYPE_1__ injected; } ;
typedef TYPE_2__ network_mysqld_con_lua_t ;


 int g_free (TYPE_2__*) ;
 int network_injection_queue_free (int ) ;

void network_mysqld_con_lua_free(network_mysqld_con_lua_t *st) {
 if (!st) return;

 network_injection_queue_free(st->injected.queries);

 g_free(st);
}
