#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  opt_val ;
struct TYPE_5__ {int icmp_pkt_size; int /*<<< orphan*/  transmitted; int /*<<< orphan*/  sock; int /*<<< orphan*/  target_addr; TYPE_2__* packet_hdr; } ;
typedef  TYPE_1__ esp_ping_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {scalar_t__ chksum; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 

__attribute__((used)) static esp_err_t FUNC4(esp_ping_t *ep)
{
    esp_err_t ret = ESP_OK;
    ep->packet_hdr->seqno++;
    /* generate checksum since "seqno" has changed */
    ep->packet_hdr->chksum = 0;
    ep->packet_hdr->chksum = FUNC2(ep->packet_hdr, ep->icmp_pkt_size);

    int sent = FUNC3(ep->sock, ep->packet_hdr, ep->icmp_pkt_size, 0,
                      (struct sockaddr *)&ep->target_addr, sizeof(ep->target_addr));

    if (sent != ep->icmp_pkt_size) {
        int opt_val;
        socklen_t opt_len = sizeof(opt_val);
        FUNC1(ep->sock, SOL_SOCKET, SO_ERROR, &opt_val, &opt_len);
        FUNC0(TAG, "send error=%d", opt_val);
        ret = ESP_FAIL;
    } else {
        ep->transmitted++;
    }
    return ret;
}