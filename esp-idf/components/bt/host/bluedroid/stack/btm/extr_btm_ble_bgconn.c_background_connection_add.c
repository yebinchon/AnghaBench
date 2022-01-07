
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bt_bdaddr_t ;
struct TYPE_5__ {int address; } ;
typedef TYPE_1__ background_connection_t ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 int assert (int *) ;
 int background_connections ;
 int background_connections_lazy_init () ;
 TYPE_1__* hash_map_get (int ,int *) ;
 int hash_map_set (int ,int *,TYPE_1__*) ;
 TYPE_1__* osi_calloc (int) ;

__attribute__((used)) static BOOLEAN background_connection_add(bt_bdaddr_t *address)
{
    assert(address);
    background_connections_lazy_init();
    background_connection_t *connection = hash_map_get(background_connections, address);
    if (!connection) {
        connection = osi_calloc(sizeof(background_connection_t));
        connection->address = *address;
        hash_map_set(background_connections, &(connection->address), connection);
        return TRUE;
    }
    return FALSE;
}
