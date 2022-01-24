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
struct server_worker {int /*<<< orphan*/  efd; int /*<<< orphan*/  thread_id; } ;
struct epoll_event {int dummy; } ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct server_worker*,struct epoll_event*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void *FUNC4(void *arg)
{
    struct server_worker *wrker = (struct server_worker *)arg;
    struct epoll_event events[128];

    FUNC0(wrker->thread_id);

    while (TRUE)
    {
        int i, n = FUNC1(wrker->efd, events, 127, -1);

        if (n == -1)
            FUNC3("epoll_wait");

        for (i = 0; i < n; i++)
            FUNC2(wrker, &events[i]);
    }
}