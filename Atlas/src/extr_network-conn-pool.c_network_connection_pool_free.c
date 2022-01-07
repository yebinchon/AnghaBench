
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_connection_pool_entry ;
typedef int network_connection_pool ;


 int TRUE ;
 int g_queue_free (int *) ;
 int * g_queue_pop_head (int *) ;
 int network_connection_pool_entry_free (int *,int ) ;

void network_connection_pool_free(network_connection_pool *pool) {
 if (pool) {
  network_connection_pool_entry *entry = ((void*)0);
  while ((entry = g_queue_pop_head(pool))) network_connection_pool_entry_free(entry, TRUE);
  g_queue_free(pool);
 }
}
