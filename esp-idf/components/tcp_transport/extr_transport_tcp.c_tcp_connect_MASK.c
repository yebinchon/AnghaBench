#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct TYPE_4__ {int sock; } ;
typedef  TYPE_1__ transport_tcp_t ;
struct timeval {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ip_addr_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct timeval*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (char const*,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    struct sockaddr_in remote_ip;
    struct timeval tv;
    transport_tcp_t *tcp = FUNC5(t);

    FUNC2(&remote_ip, sizeof(struct sockaddr_in));

    //if stream_host is not ip address, resolve it AF_INET,servername,&serveraddr.sin_addr
    if (FUNC8(AF_INET, host, &remote_ip.sin_addr) != 1) {
        if (FUNC10(host, &remote_ip) < 0) {
            return -1;
        }
    }

    tcp->sock = FUNC12(PF_INET, SOCK_STREAM, 0);

    if (tcp->sock < 0) {
        FUNC1(TAG, "Error create socket");
        return -1;
    }

    remote_ip.sin_family = AF_INET;
    remote_ip.sin_port = FUNC7(port);

    FUNC6(timeout_ms, &tv);

    FUNC11(tcp->sock, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
    FUNC11(tcp->sock, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));

    FUNC0(TAG, "[sock=%d],connecting to server IP:%s,Port:%d...",
             tcp->sock, FUNC9((const ip_addr_t*)&remote_ip.sin_addr.s_addr), port);
    if (FUNC4(tcp->sock, (struct sockaddr *)(&remote_ip), sizeof(struct sockaddr)) != 0) {
        FUNC3(tcp->sock);
        tcp->sock = -1;
        return -1;
    }
    return tcp->sock;
}