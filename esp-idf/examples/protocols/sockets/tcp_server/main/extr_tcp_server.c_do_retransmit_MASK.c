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
typedef  int /*<<< orphan*/  rx_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int const,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int const,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const int sock)
{
    int len;
    char rx_buffer[128];

    do {
        len = FUNC3(sock, rx_buffer, sizeof(rx_buffer) - 1, 0);
        if (len < 0) {
            FUNC0(TAG, "Error occurred during receiving: errno %d", errno);
        } else if (len == 0) {
            FUNC2(TAG, "Connection closed");
        } else {
            rx_buffer[len] = 0; // Null-terminate whatever is received and treat it like a string
            FUNC1(TAG, "Received %d bytes: %s", len, rx_buffer);

            // send() can return less bytes than supplied length.
            // Walk-around for robust implementation. 
            int to_write = len;
            while (to_write > 0) {
                int written = FUNC4(sock, rx_buffer + (len - to_write), to_write, 0);
                if (written < 0) {
                    FUNC0(TAG, "Error occurred during sending: errno %d", errno);
                }
                to_write -= written;
            }
        }
    } while (len > 0);
}