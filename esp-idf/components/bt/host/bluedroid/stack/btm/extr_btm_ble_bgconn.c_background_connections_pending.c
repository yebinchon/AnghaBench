
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ background_connections ;
 int background_connections_pending_cb ;
 int hash_map_foreach (scalar_t__,int ,int*) ;

__attribute__((used)) static bool background_connections_pending(void)
{
    bool pending_connections = 0;
    if (background_connections) {
        hash_map_foreach(background_connections, background_connections_pending_cb, &pending_connections);
    }
    return pending_connections;
}
