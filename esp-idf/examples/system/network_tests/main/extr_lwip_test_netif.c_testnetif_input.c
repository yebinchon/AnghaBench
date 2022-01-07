
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pbuf {int payload; int * l2_owner; } ;
struct netif {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* input ) (struct pbuf*,TYPE_1__*) ;} ;


 scalar_t__ ERR_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int PBUF_RAM ;
 int PBUF_RAW ;
 TYPE_1__* g_last_netif ;
 int memcpy (int ,void*,size_t) ;
 struct pbuf* pbuf_alloc (int ,size_t,int ) ;
 int pbuf_free (struct pbuf*) ;
 int printf (char*,...) ;
 scalar_t__ stub1 (struct pbuf*,TYPE_1__*) ;

void testnetif_input(struct netif *netif, void *buffer, size_t len, void *eb)
{
    struct pbuf *p;
    if (g_last_netif == ((void*)0)) {
        printf("error!");
        return;
    }

    printf("simul in: %d\n", len);
    if (len==0) return;

    p = pbuf_alloc(PBUF_RAW, len, PBUF_RAM);
    p->l2_owner = ((void*)0);
    memcpy(p->payload, buffer, len);





    if (g_last_netif->input(p, g_last_netif) != ERR_OK) {
        LWIP_DEBUGF(NETIF_DEBUG, ("ethernetif_input: IP input error\n"));
        pbuf_free(p);
    }

}
