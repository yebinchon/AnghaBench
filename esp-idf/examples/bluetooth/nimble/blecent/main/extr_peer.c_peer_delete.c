
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct peer_svc {int dummy; } ;
struct peer {int svcs; } ;


 int BLE_HS_ENOTCONN ;
 int BLE_HS_EOS ;
 struct peer_svc* SLIST_FIRST (int *) ;
 int SLIST_REMOVE (int *,struct peer*,struct peer*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int next ;
 int os_memblock_put (int *,struct peer*) ;
 struct peer* peer_find (int ) ;
 int peer_pool ;
 int peer_svc_delete (struct peer_svc*) ;
 int peers ;

int
peer_delete(uint16_t conn_handle)
{
    struct peer_svc *svc;
    struct peer *peer;
    int rc;

    peer = peer_find(conn_handle);
    if (peer == ((void*)0)) {
        return BLE_HS_ENOTCONN;
    }

    SLIST_REMOVE(&peers, peer, peer, next);

    while ((svc = SLIST_FIRST(&peer->svcs)) != ((void*)0)) {
        SLIST_REMOVE_HEAD(&peer->svcs, next);
        peer_svc_delete(svc);
    }

    rc = os_memblock_put(&peer_pool, peer);
    if (rc != 0) {
        return BLE_HS_EOS;
    }

    return 0;
}
