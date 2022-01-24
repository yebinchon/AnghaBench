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
 scalar_t__ QUEUE_SIZE ; 
 int RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mutex ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ qsize ; 
 scalar_t__ queue ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ running ; 
 int /*<<< orphan*/  sd ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(void *arg) {
    char *data = FUNC2(sizeof(char) * RECV_SIZE);
    while (1) {
        int length;
        if ((length = FUNC7(sd, data, RECV_SIZE - 1, 0)) <= 0) {
            if (running) {
                FUNC6("recv");
                FUNC0(1);
            }
            else {
                break;
            }
        }
        data[length] = '\0';
        while (1) {
            int done = 0;
            FUNC4(&mutex);
            if (qsize + length < QUEUE_SIZE) {
                FUNC3(queue + qsize, data, sizeof(char) * (length + 1));
                qsize += length;
                done = 1;
            }
            FUNC5(&mutex);
            if (done) {
                break;
            }
            FUNC8(0);
        }
    }
    FUNC1(data);
    return 0;
}