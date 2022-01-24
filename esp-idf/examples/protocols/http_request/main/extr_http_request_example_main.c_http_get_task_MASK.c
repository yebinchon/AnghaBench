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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  recv_buf ;
typedef  int /*<<< orphan*/  receiving_timeout ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  REQUEST ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WEB_PORT ; 
 int /*<<< orphan*/  WEB_SERVER ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo const*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (struct in_addr) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int FUNC9 (int,char*,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void *pvParameters)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_STREAM,
    };
    struct addrinfo *res;
    struct in_addr *addr;
    int s, r;
    char recv_buf[64];

    while(1) {
        int err = FUNC6(WEB_SERVER, WEB_PORT, &hints, &res);

        if(err != 0 || res == NULL) {
            FUNC0(TAG, "DNS lookup failed err=%d res=%p", err, res);
            FUNC13(1000 / portTICK_PERIOD_MS);
            continue;
        }

        /* Code to print the resolved IP.

           Note: inet_ntoa is non-reentrant, look at ipaddr_ntoa_r for "real" code */
        addr = &((struct sockaddr_in *)res->ai_addr)->sin_addr;
        FUNC1(TAG, "DNS lookup succeeded. IP=%s", FUNC7(*addr));

        s = FUNC11(res->ai_family, res->ai_socktype, 0);
        if(s < 0) {
            FUNC0(TAG, "... Failed to allocate socket.");
            FUNC5(res);
            FUNC13(1000 / portTICK_PERIOD_MS);
            continue;
        }
        FUNC1(TAG, "... allocated socket");

        if(FUNC4(s, res->ai_addr, res->ai_addrlen) != 0) {
            FUNC0(TAG, "... socket connect failed errno=%d", errno);
            FUNC3(s);
            FUNC5(res);
            FUNC13(4000 / portTICK_PERIOD_MS);
            continue;
        }

        FUNC1(TAG, "... connected");
        FUNC5(res);

        if (FUNC14(s, REQUEST, FUNC12(REQUEST)) < 0) {
            FUNC0(TAG, "... socket send failed");
            FUNC3(s);
            FUNC13(4000 / portTICK_PERIOD_MS);
            continue;
        }
        FUNC1(TAG, "... socket send success");

        struct timeval receiving_timeout;
        receiving_timeout.tv_sec = 5;
        receiving_timeout.tv_usec = 0;
        if (FUNC10(s, SOL_SOCKET, SO_RCVTIMEO, &receiving_timeout,
                sizeof(receiving_timeout)) < 0) {
            FUNC0(TAG, "... failed to set socket receiving timeout");
            FUNC3(s);
            FUNC13(4000 / portTICK_PERIOD_MS);
            continue;
        }
        FUNC1(TAG, "... set socket receiving timeout success");

        /* Read HTTP response */
        do {
            FUNC2(recv_buf, sizeof(recv_buf));
            r = FUNC9(s, recv_buf, sizeof(recv_buf)-1);
            for(int i = 0; i < r; i++) {
                FUNC8(recv_buf[i]);
            }
        } while(r > 0);

        FUNC1(TAG, "... done reading from socket. Last read return=%d errno=%d.", r, errno);
        FUNC3(s);
        for(int countdown = 10; countdown >= 0; countdown--) {
            FUNC1(TAG, "%d... ", countdown);
            FUNC13(1000 / portTICK_PERIOD_MS);
        }
        FUNC1(TAG, "Starting again!");
    }
}