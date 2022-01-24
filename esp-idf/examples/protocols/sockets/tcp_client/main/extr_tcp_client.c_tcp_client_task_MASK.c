#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; void* sin6_port; void* sin6_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; void* sin_port; void* sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  rx_buffer ;
typedef  int /*<<< orphan*/  dest_addr ;
typedef  int /*<<< orphan*/  addr_str ;

/* Variables and functions */
 void* AF_INET ; 
 void* AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  HOST_IP_ADDR ; 
 int IPPROTO_IP ; 
 int IPPROTO_IPV6 ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,char*,int) ; 
 int /*<<< orphan*/  payload ; 
 int portTICK_PERIOD_MS ; 
 int FUNC9 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(void *pvParameters)
{
    char rx_buffer[128];
    char addr_str[128];
    int addr_family;
    int ip_protocol;

    while (1) {

#ifdef CONFIG_EXAMPLE_IPV4
        struct sockaddr_in dest_addr;
        dest_addr.sin_addr.s_addr = inet_addr(HOST_IP_ADDR);
        dest_addr.sin_family = AF_INET;
        dest_addr.sin_port = htons(PORT);
        addr_family = AF_INET;
        ip_protocol = IPPROTO_IP;
        inet_ntoa_r(dest_addr.sin_addr, addr_str, sizeof(addr_str) - 1);
#else // IPV6
        struct sockaddr_in6 dest_addr;
        FUNC5(HOST_IP_ADDR, &dest_addr.sin6_addr);
        dest_addr.sin6_family = AF_INET6;
        dest_addr.sin6_port = FUNC4(PORT);
        addr_family = AF_INET6;
        ip_protocol = IPPROTO_IPV6;
        FUNC6(dest_addr.sin6_addr, addr_str, sizeof(addr_str) - 1);
#endif

        int sock =  FUNC12(addr_family, SOCK_STREAM, ip_protocol);
        if (sock < 0) {
            FUNC0(TAG, "Unable to create socket: errno %d", errno);
            break;
        }
        FUNC1(TAG, "Socket created, connecting to %s:%d", HOST_IP_ADDR, PORT);

        int err = FUNC3(sock, (struct sockaddr *)&dest_addr, sizeof(dest_addr));
        if (err != 0) {
            FUNC0(TAG, "Socket unable to connect: errno %d", errno);
            break;
        }
        FUNC1(TAG, "Successfully connected");

        while (1) {
            int err = FUNC10(sock, payload, FUNC13(payload), 0);
            if (err < 0) {
                FUNC0(TAG, "Error occurred during sending: errno %d", errno);
                break;
            }

            int len = FUNC9(sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
            // Error occurred during receiving
            if (len < 0) {
                FUNC0(TAG, "recv failed: errno %d", errno);
                break;
            }
            // Data received
            else {
                rx_buffer[len] = 0; // Null-terminate whatever we received and treat like a string
                FUNC1(TAG, "Received %d bytes from %s:", len, addr_str);
                FUNC1(TAG, "%s", rx_buffer);
            }

            FUNC14(2000 / portTICK_PERIOD_MS);
        }

        if (sock != -1) {
            FUNC0(TAG, "Shutting down socket and restarting...");
            FUNC11(sock, 0);
            FUNC2(sock);
        }
    }
    FUNC15(NULL);
}