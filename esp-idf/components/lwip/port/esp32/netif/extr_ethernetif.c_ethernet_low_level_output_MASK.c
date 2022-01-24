#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  payload; int /*<<< orphan*/ * l2_buf; int /*<<< orphan*/ * l2_owner; int /*<<< orphan*/  tot_len; int /*<<< orphan*/ * next; } ;
struct netif {int dummy; } ;
typedef  int /*<<< orphan*/  esp_netif_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_ABRT ; 
 int /*<<< orphan*/  ERR_IF ; 
 int /*<<< orphan*/  ERR_MEM ; 
 int /*<<< orphan*/  ERR_OK ; 
 scalar_t__ ESP_FAIL ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETIF_DEBUG ; 
 int /*<<< orphan*/  PBUF_DEBUG ; 
 int /*<<< orphan*/  PBUF_RAM ; 
 int /*<<< orphan*/  PBUF_RAW_TX ; 
 int /*<<< orphan*/ * FUNC1 (struct netif*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pbuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pbuf*,struct pbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct pbuf*) ; 

__attribute__((used)) static err_t FUNC6(struct netif *netif, struct pbuf *p)
{
    struct pbuf *q = p;
    esp_netif_t *esp_netif = FUNC1(netif);
    esp_err_t ret = ESP_FAIL;
    if (!esp_netif) {
        FUNC0(NETIF_DEBUG, ("corresponding esp-netif is NULL: netif=%p pbuf=%p len=%d\n", netif, p, p->len));
        return ERR_IF;
    }

    if (q->next == NULL) {
        ret = FUNC2(esp_netif, q->payload, q->len);
    } else {
        FUNC0(PBUF_DEBUG, ("low_level_output: pbuf is a list, application may has bug"));
        q = FUNC3(PBUF_RAW_TX, p->tot_len, PBUF_RAM);
        if (q != NULL) {
#if ESP_LWIP
            /* This pbuf RAM was not allocated on layer2, no extra free operation needed in pbuf_free */
            q->l2_owner = NULL;
            q->l2_buf = NULL;
#endif
            FUNC4(q, p);
        } else {
            return ERR_MEM;
        }
        ret = FUNC2(esp_netif, q->payload, q->len);
        /* content in payload has been copied to DMA buffer, it's safe to free pbuf now */
        FUNC5(q);
    }
    /* Check error */
    if (ret != ESP_OK) {
        return ERR_ABRT;
    } else {
        return ERR_OK;
    }
}