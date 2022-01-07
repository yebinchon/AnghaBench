
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ble_gatt_svc {int start_handle; } ;
struct peer_svc {int chrs; struct ble_gatt_svc svc; } ;
struct peer {int svcs; } ;


 int BLE_HS_ENOMEM ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_AFTER (struct peer_svc*,struct peer_svc*,int ) ;
 int SLIST_INSERT_HEAD (int *,struct peer_svc*,int ) ;
 int memset (struct peer_svc*,int ,int) ;
 int next ;
 struct peer_svc* os_memblock_get (int *) ;
 struct peer_svc* peer_svc_find (struct peer*,int ,struct peer_svc**) ;
 int peer_svc_pool ;

__attribute__((used)) static int
peer_svc_add(struct peer *peer, const struct ble_gatt_svc *gatt_svc)
{
    struct peer_svc *prev;
    struct peer_svc *svc;

    svc = peer_svc_find(peer, gatt_svc->start_handle, &prev);
    if (svc != ((void*)0)) {

        return 0;
    }

    svc = os_memblock_get(&peer_svc_pool);
    if (svc == ((void*)0)) {

        return BLE_HS_ENOMEM;
    }
    memset(svc, 0, sizeof * svc);

    svc->svc = *gatt_svc;
    SLIST_INIT(&svc->chrs);

    if (prev == ((void*)0)) {
        SLIST_INSERT_HEAD(&peer->svcs, svc, next);
    } else {
        SLIST_INSERT_AFTER(prev, svc, next);
    }

    return 0;
}
