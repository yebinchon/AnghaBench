
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_connection_pool ;


 int * g_queue_new () ;

network_connection_pool *network_connection_pool_new(void) {
 network_connection_pool *pool = g_queue_new();
 return pool;
}
