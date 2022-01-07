
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int len; int payload; int * l2_buf; int * l2_owner; int tot_len; int * next; } ;
struct netif {int dummy; } ;
typedef int esp_netif_t ;
typedef scalar_t__ esp_err_t ;
typedef int err_t ;


 int ERR_ABRT ;
 int ERR_IF ;
 int ERR_MEM ;
 int ERR_OK ;
 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int LWIP_DEBUGF (int ,char*) ;
 int NETIF_DEBUG ;
 int PBUF_DEBUG ;
 int PBUF_RAM ;
 int PBUF_RAW_TX ;
 int * esp_netif_get_handle_from_netif_impl (struct netif*) ;
 scalar_t__ esp_netif_transmit (int *,int ,int ) ;
 struct pbuf* pbuf_alloc (int ,int ,int ) ;
 int pbuf_copy (struct pbuf*,struct pbuf*) ;
 int pbuf_free (struct pbuf*) ;

__attribute__((used)) static err_t ethernet_low_level_output(struct netif *netif, struct pbuf *p)
{
    struct pbuf *q = p;
    esp_netif_t *esp_netif = esp_netif_get_handle_from_netif_impl(netif);
    esp_err_t ret = ESP_FAIL;
    if (!esp_netif) {
        LWIP_DEBUGF(NETIF_DEBUG, ("corresponding esp-netif is NULL: netif=%p pbuf=%p len=%d\n", netif, p, p->len));
        return ERR_IF;
    }

    if (q->next == ((void*)0)) {
        ret = esp_netif_transmit(esp_netif, q->payload, q->len);
    } else {
        LWIP_DEBUGF(PBUF_DEBUG, ("low_level_output: pbuf is a list, application may has bug"));
        q = pbuf_alloc(PBUF_RAW_TX, p->tot_len, PBUF_RAM);
        if (q != ((void*)0)) {





            pbuf_copy(q, p);
        } else {
            return ERR_MEM;
        }
        ret = esp_netif_transmit(esp_netif, q->payload, q->len);

        pbuf_free(q);
    }

    if (ret != ESP_OK) {
        return ERR_ABRT;
    } else {
        return ERR_OK;
    }
}
