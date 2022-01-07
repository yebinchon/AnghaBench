
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct peer_svc {int dummy; } ;
struct peer {int disc_prev_chr_val; void* disc_cb_arg; int * disc_cb; int svcs; } ;
typedef int peer_disc_fn ;


 int BLE_HS_ENOTCONN ;
 struct peer_svc* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int ble_gattc_disc_all_svcs (int ,int ,struct peer*) ;
 int next ;
 struct peer* peer_find (int ) ;
 int peer_svc_delete (struct peer_svc*) ;
 int peer_svc_disced ;

int
peer_disc_all(uint16_t conn_handle, peer_disc_fn *disc_cb, void *disc_cb_arg)
{
    struct peer_svc *svc;
    struct peer *peer;
    int rc;

    peer = peer_find(conn_handle);
    if (peer == ((void*)0)) {
        return BLE_HS_ENOTCONN;
    }


    while ((svc = SLIST_FIRST(&peer->svcs)) != ((void*)0)) {
        SLIST_REMOVE_HEAD(&peer->svcs, next);
        peer_svc_delete(svc);
    }

    peer->disc_prev_chr_val = 1;
    peer->disc_cb = disc_cb;
    peer->disc_cb_arg = disc_cb_arg;

    rc = ble_gattc_disc_all_svcs(conn_handle, peer_svc_disced, peer);
    if (rc != 0) {
        return rc;
    }

    return 0;
}
