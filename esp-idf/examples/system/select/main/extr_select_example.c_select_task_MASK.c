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
struct timeval {int tv_sec; int /*<<< orphan*/  tv_usec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  socket_fd ; 
 int /*<<< orphan*/  uart_fd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *param)
{
    while (1) {
        int s;
        fd_set rfds;
        struct timeval tv = {
            .tv_sec = 1,
            .tv_usec = 0,
        };

        FUNC3(&rfds);
        FUNC2(uart_fd, &rfds);
        FUNC2(socket_fd, &rfds);

        s = FUNC6(FUNC4(uart_fd, socket_fd) + 1, &rfds, NULL, NULL, &tv);

        if (s < 0) {
            FUNC0(TAG, "Select failed: errno %d", errno);
        } else if (s == 0) {
            FUNC1(TAG, "Timeout has been reached and nothing has been received");
        } else {
            FUNC5(socket_fd, &rfds, "socket");
            FUNC5(uart_fd, &rfds, "UART1");
        }
    }

    FUNC7(NULL);
}