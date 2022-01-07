
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct peer {int conn_handle; } ;


 int BLE_HS_EALREADY ;
 int BLE_HS_ENOMEM ;
 int SLIST_INSERT_HEAD (int *,struct peer*,int ) ;
 int memset (struct peer*,int ,int) ;
 int next ;
 struct peer* os_memblock_get (int *) ;
 struct peer* peer_find (int ) ;
 int peer_pool ;
 int peers ;

int
peer_add(uint16_t conn_handle)
{
    struct peer *peer;


    peer = peer_find(conn_handle);
    if (peer != ((void*)0)) {
        return BLE_HS_EALREADY;
    }

    peer = os_memblock_get(&peer_pool);
    if (peer == ((void*)0)) {

        return BLE_HS_ENOMEM;
    }

    memset(peer, 0, sizeof * peer);
    peer->conn_handle = conn_handle;

    SLIST_INSERT_HEAD(&peers, peer, next);

    return 0;
}
