
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (scalar_t__) ;
 int background_connection_buckets ;
 scalar_t__ background_connections ;
 int bdaddr_equality_fn ;
 int hash_function_bdaddr ;
 scalar_t__ hash_map_new (int ,int ,int *,int ,int ) ;
 int osi_free_func ;

__attribute__((used)) static void background_connections_lazy_init(void)
{
    if (!background_connections) {
        background_connections = hash_map_new(background_connection_buckets,
                                      hash_function_bdaddr, ((void*)0), osi_free_func, bdaddr_equality_fn);
        assert(background_connections);
    }
}
