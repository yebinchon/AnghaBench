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

/* Variables and functions */
 int /*<<< orphan*/  client_enabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ qsize ; 
 int /*<<< orphan*/  queue ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  sd ; 

void FUNC2() {
    if (!client_enabled) {
        return;
    }
    running = 0;
    FUNC0(sd);
    // if (thrd_join(recv_thread, NULL) != thrd_success) {
    //     perror("thrd_join");
    //     exit(1);
    // }
    // mtx_destroy(&mutex);
    qsize = 0;
    FUNC1(queue);
    // printf("Bytes Sent: %d, Bytes Received: %d\n",
    //     bytes_sent, bytes_received);
}