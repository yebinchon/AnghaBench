#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  server_addr ;
struct TYPE_12__ {int* ip; int /*<<< orphan*/  mac; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_5__ ctx; } ;
typedef  TYPE_3__ sc_ack_t ;
typedef  int /*<<< orphan*/  remote_ip ;
typedef  int portTickType ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_11__ {TYPE_2__ ip; } ;
typedef  TYPE_4__ esp_netif_ip_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ESP_OK ; 
 int FD_SETSIZE ; 
 scalar_t__ INADDR_ANY ; 
 int LWIP_SOCKET_OFFSET ; 
 int SC_ACK_AIRKISS_LEN ; 
 int SC_ACK_AIRKISS_SERVER_PORT ; 
 scalar_t__ SC_ACK_MAX_COUNT ; 
 int SC_ACK_TOUCH_LEN ; 
 int SC_ACK_TOUCH_SERVER_PORT ; 
 int /*<<< orphan*/  SC_EVENT ; 
 int /*<<< orphan*/  SC_EVENT_SEND_ACK_DONE ; 
 scalar_t__ SC_TYPE_ESPTOUCH ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int SO_BROADCAST ; 
 int SO_REUSEADDR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_IF_STA ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_RATE_MS ; 
 scalar_t__ s_sc_ack_send ; 
 int FUNC11 (int) ; 
 int FUNC12 (int,TYPE_5__*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(void *pvParameters)
{
    sc_ack_t *ack = (sc_ack_t *)pvParameters;
    esp_netif_ip_info_t local_ip;
    uint8_t remote_ip[4];
    FUNC10(remote_ip, ack->ctx.ip, sizeof(remote_ip));
    int remote_port = (ack->type == SC_TYPE_ESPTOUCH) ? SC_ACK_TOUCH_SERVER_PORT : SC_ACK_AIRKISS_SERVER_PORT;
    struct sockaddr_in server_addr;
    socklen_t sin_size = sizeof(server_addr);
    int send_sock = -1;
    int optval = 1;
    int sendlen;
    int ack_len = (ack->type == SC_TYPE_ESPTOUCH) ? SC_ACK_TOUCH_LEN : SC_ACK_AIRKISS_LEN;
    uint8_t packet_count = 1;
    int err;
    int ret;

    FUNC2(&server_addr, sizeof(struct sockaddr_in));
    server_addr.sin_family = AF_INET;
    FUNC10(&server_addr.sin_addr.s_addr, remote_ip, sizeof(remote_ip));
    server_addr.sin_port = FUNC9(remote_port);

    FUNC7(WIFI_IF_STA, ack->ctx.mac);

    FUNC15(200 / portTICK_RATE_MS);

    while (s_sc_ack_send) {
        /* Get local IP address of station */
        ret = FUNC6(FUNC5("WIFI_STA_DEF"), &local_ip);
        if ((ESP_OK == ret) && (local_ip.ip.addr != INADDR_ANY)) {
            /* If ESP touch, smartconfig ACK contains local IP address. */
            if (ack->type == SC_TYPE_ESPTOUCH) {
                FUNC10(ack->ctx.ip, &local_ip.ip.addr, 4);
            }

            /* Create UDP socket. */
            send_sock = FUNC14(AF_INET, SOCK_DGRAM, 0);
            if ((send_sock < LWIP_SOCKET_OFFSET) || (send_sock > (FD_SETSIZE - 1))) {
                FUNC1(TAG,  "Creat udp socket failed");
                goto _end;	
            }

            FUNC13(send_sock, SOL_SOCKET, SO_BROADCAST | SO_REUSEADDR, &optval, sizeof(int));

            while (s_sc_ack_send) {
                /* Send smartconfig ACK every 100ms. */
                FUNC15(100 / portTICK_RATE_MS);

                sendlen = FUNC12(send_sock, &ack->ctx, ack_len, 0, (struct sockaddr*) &server_addr, sin_size);
                if (sendlen > 0) {
                    /* Totally send 30 smartconfig ACKs. Then smartconfig is successful. */
                    if (packet_count++ >= SC_ACK_MAX_COUNT) {
                        FUNC4(SC_EVENT, SC_EVENT_SEND_ACK_DONE, NULL, 0, portMAX_DELAY);
                        goto _end;
                    }
                }
                else {
                    err = FUNC11(send_sock);
                    if (err == ENOMEM || err == EAGAIN) {
                        FUNC0(TAG, "send failed, errno %d", err);
                        continue;
                    }
                    FUNC1(TAG, "send failed, errno %d", err);
                    goto _end;
                }
            }
        }
        else {
            FUNC15((portTickType)(100 / portTICK_RATE_MS));
        }
    }

_end:
    if ((send_sock >= LWIP_SOCKET_OFFSET) && (send_sock <= (FD_SETSIZE - 1))) {
        FUNC3(send_sock);
    }
    FUNC8(ack);
    FUNC16(NULL);
}