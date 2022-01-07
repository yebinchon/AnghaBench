
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer_svc {int dummy; } ;
struct peer_dsc {int dummy; } ;
struct peer_chr {int dummy; } ;
struct peer {int dummy; } ;


 int BLE_HS_ENOMEM ;
 int BLE_HS_EOS ;
 int OS_MEMPOOL_BYTES (int,int) ;
 int * malloc (int ) ;
 int os_mempool_init (int *,int,int,int *,char*) ;
 int * peer_chr_mem ;
 int peer_chr_pool ;
 int * peer_dsc_mem ;
 int peer_dsc_pool ;
 int peer_free_mem () ;
 int * peer_mem ;
 int peer_pool ;
 int * peer_svc_mem ;
 int peer_svc_pool ;

int
peer_init(int max_peers, int max_svcs, int max_chrs, int max_dscs)
{
    int rc;


    peer_free_mem();

    peer_mem = malloc(
                   OS_MEMPOOL_BYTES(max_peers, sizeof (struct peer)));
    if (peer_mem == ((void*)0)) {
        rc = BLE_HS_ENOMEM;
        goto err;
    }

    rc = os_mempool_init(&peer_pool, max_peers,
                         sizeof (struct peer), peer_mem,
                         "peer_pool");
    if (rc != 0) {
        rc = BLE_HS_EOS;
        goto err;
    }

    peer_svc_mem = malloc(
                       OS_MEMPOOL_BYTES(max_svcs, sizeof (struct peer_svc)));
    if (peer_svc_mem == ((void*)0)) {
        rc = BLE_HS_ENOMEM;
        goto err;
    }

    rc = os_mempool_init(&peer_svc_pool, max_svcs,
                         sizeof (struct peer_svc), peer_svc_mem,
                         "peer_svc_pool");
    if (rc != 0) {
        rc = BLE_HS_EOS;
        goto err;
    }

    peer_chr_mem = malloc(
                       OS_MEMPOOL_BYTES(max_chrs, sizeof (struct peer_chr)));
    if (peer_chr_mem == ((void*)0)) {
        rc = BLE_HS_ENOMEM;
        goto err;
    }

    rc = os_mempool_init(&peer_chr_pool, max_chrs,
                         sizeof (struct peer_chr), peer_chr_mem,
                         "peer_chr_pool");
    if (rc != 0) {
        rc = BLE_HS_EOS;
        goto err;
    }

    peer_dsc_mem = malloc(
                       OS_MEMPOOL_BYTES(max_dscs, sizeof (struct peer_dsc)));
    if (peer_dsc_mem == ((void*)0)) {
        rc = BLE_HS_ENOMEM;
        goto err;
    }

    rc = os_mempool_init(&peer_dsc_pool, max_dscs,
                         sizeof (struct peer_dsc), peer_dsc_mem,
                         "peer_dsc_pool");
    if (rc != 0) {
        rc = BLE_HS_EOS;
        goto err;
    }

    return 0;

err:
    peer_free_mem();
    return rc;
}
