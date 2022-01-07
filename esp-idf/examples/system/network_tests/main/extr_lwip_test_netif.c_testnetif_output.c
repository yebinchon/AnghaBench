
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {char* payload; int len; } ;
struct netif {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;
 int printf (char*,...) ;

err_t testnetif_output(struct netif *netif, struct pbuf *p)
{
    int i;
    char *dat = p->payload;


    printf("\nPacketOut:[");
    for (i=0; i<p->len; i++) {
        printf("%02x", *dat++);
    }
    printf("]\n");

    return ERR_OK;
}
