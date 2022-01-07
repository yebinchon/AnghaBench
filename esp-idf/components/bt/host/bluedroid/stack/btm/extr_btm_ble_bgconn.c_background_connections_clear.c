
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ background_connections ;
 int hash_map_clear (scalar_t__) ;

__attribute__((used)) static void background_connections_clear(void)
{
    if (background_connections) {
        hash_map_clear(background_connections);
    }
}
