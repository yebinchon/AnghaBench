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
 int /*<<< orphan*/  QUEUE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  client_enabled ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtx_plain ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ qsize ; 
 char* queue ; 
 int /*<<< orphan*/  recv_thread ; 
 int /*<<< orphan*/  recv_worker ; 
 int running ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ thrd_success ; 

void FUNC5() {
    if (!client_enabled) {
        return;
    }
    running = 1;
    queue = (char *)FUNC0(QUEUE_SIZE, sizeof(char));
    qsize = 0;
    FUNC2(&mutex, mtx_plain);
    if (FUNC4(&recv_thread, recv_worker, NULL) != thrd_success) {
        FUNC3("thrd_create");
        FUNC1(1);
    }
}