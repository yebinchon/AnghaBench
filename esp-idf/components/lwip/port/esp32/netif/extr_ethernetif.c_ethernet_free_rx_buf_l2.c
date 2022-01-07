
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;


 int free (void*) ;

__attribute__((used)) static void ethernet_free_rx_buf_l2(struct netif *netif, void *buf)
{
    free(buf);
}
