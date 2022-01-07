
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int network_connection_pool ;
struct TYPE_6__ {scalar_t__ uuid; scalar_t__ addr; TYPE_3__* pools; } ;
typedef TYPE_1__ network_backend_t ;
typedef scalar_t__ guint ;
struct TYPE_7__ {scalar_t__ len; } ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_ptr_array_free (TYPE_3__*,int ) ;
 int * g_ptr_array_index (TYPE_3__*,scalar_t__) ;
 int g_string_free (scalar_t__,int ) ;
 int network_address_free (scalar_t__) ;
 int network_connection_pool_free (int *) ;

void network_backend_free(network_backend_t *b) {
 if (!b) return;

 guint i;
 for (i = 0; i < b->pools->len; ++i) {
  network_connection_pool* pool = g_ptr_array_index(b->pools, i);
  network_connection_pool_free(pool);
 }
 g_ptr_array_free(b->pools, TRUE);

 if (b->addr) network_address_free(b->addr);
 if (b->uuid) g_string_free(b->uuid, TRUE);

 g_free(b);
}
