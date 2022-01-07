
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_bdaddr_t ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ background_connections ;
 int hash_map_erase (scalar_t__,int *) ;

__attribute__((used)) static BOOLEAN background_connection_remove(bt_bdaddr_t *address)
{
    if (address && background_connections) {
        return hash_map_erase(background_connections, address);
    }
    return FALSE;
}
