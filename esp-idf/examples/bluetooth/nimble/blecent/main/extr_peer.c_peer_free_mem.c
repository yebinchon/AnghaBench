
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * peer_chr_mem ;
 int * peer_dsc_mem ;
 int * peer_mem ;
 int * peer_svc_mem ;

__attribute__((used)) static void
peer_free_mem(void)
{
    free(peer_mem);
    peer_mem = ((void*)0);

    free(peer_svc_mem);
    peer_svc_mem = ((void*)0);

    free(peer_chr_mem);
    peer_chr_mem = ((void*)0);

    free(peer_dsc_mem);
    peer_dsc_mem = ((void*)0);
}
