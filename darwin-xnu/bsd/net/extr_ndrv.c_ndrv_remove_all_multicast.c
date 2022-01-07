
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndrv_multiaddr {int ifma; struct ndrv_multiaddr* next; } ;
struct ndrv_cb {struct ndrv_multiaddr* nd_multiaddrs; int * nd_if; } ;


 int FREE (struct ndrv_multiaddr*,int ) ;
 int M_IFADDR ;
 int ifmaddr_release (int ) ;
 int ifnet_remove_multicast (int ) ;

__attribute__((used)) static void
ndrv_remove_all_multicast(struct ndrv_cb* np)
{
    struct ndrv_multiaddr* cur;

    if (np->nd_if != ((void*)0))
    {
        while (np->nd_multiaddrs != ((void*)0))
        {
            cur = np->nd_multiaddrs;
            np->nd_multiaddrs = cur->next;

            ifnet_remove_multicast(cur->ifma);
            ifmaddr_release(cur->ifma);
            FREE(cur, M_IFADDR);
        }
    }
}
