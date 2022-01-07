
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_len; } ;
struct TYPE_2__ {scalar_t__ sa_len; } ;
struct ndrv_multiaddr {TYPE_1__ addr; struct ndrv_multiaddr* next; } ;
struct ndrv_cb {struct ndrv_multiaddr* nd_multiaddrs; } ;


 scalar_t__ bcmp (TYPE_1__*,struct sockaddr*,scalar_t__) ;

__attribute__((used)) static struct ndrv_multiaddr*
ndrv_have_multicast(struct ndrv_cb *np, struct sockaddr* inAddr)
{
    struct ndrv_multiaddr* cur;
    for (cur = np->nd_multiaddrs; cur != ((void*)0); cur = cur->next)
    {

        if ((inAddr->sa_len == cur->addr.sa_len) &&
            (bcmp(&cur->addr, inAddr, inAddr->sa_len) == 0))
        {

            return cur;
        }
    }

    return ((void*)0);
}
