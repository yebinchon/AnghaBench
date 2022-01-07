
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int network_connection_pool ;
struct TYPE_3__ {int pools; } ;
typedef TYPE_1__ network_backend_t ;
typedef int guint ;


 int GPOINTER_TO_UINT (int ) ;
 int g_private_get (int *) ;
 int * g_ptr_array_index (int ,int ) ;
 int tls_index ;

network_connection_pool* chassis_event_thread_pool(network_backend_t* backend) {
 guint index = GPOINTER_TO_UINT(g_private_get(&tls_index));
 return g_ptr_array_index(backend->pools, index);
}
