#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int running; void (* func ) (void*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; int /*<<< orphan*/  thd; void* arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hnd_key_once ; 
 int /*<<< orphan*/  make_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* thread_handle ; 
 int /*<<< orphan*/  wrapper ; 

int FUNC7(unsigned int id, void (*func)(void *), void *arg) {
    /* Create the key to access the thread handle if we haven't made it yet. */
    FUNC6(&hnd_key_once, make_key);

    /* Make sure we aren't trying to start a thread twice. */
    if(thread_handle[id].running) {
        FUNC0(stderr, "YabThreadStart: Thread %u is already started!\n", id);
        return -1;
    }

    /* Create the mutex and condvar for the thread. */
    if(FUNC5(&thread_handle[id].mutex, NULL)) {
        FUNC0(stderr, "YabThreadStart: Error creating mutex\n");
        return -1;
    }

    if(FUNC2(&thread_handle[id].cond, NULL)) {
        FUNC0(stderr, "YabThreadStart: Error creating condvar\n");
        FUNC4(&thread_handle[id].mutex);
        return -1;
    }

    thread_handle[id].func = func;
    thread_handle[id].arg = arg;

    /* Create the thread. */
    if(FUNC3(&thread_handle[id].thd, NULL, wrapper,
                      &thread_handle[id])) {
        FUNC0(stderr, "YabThreadStart: Couldn't start thread\n");
        FUNC1(&thread_handle[id].cond);
        FUNC4(&thread_handle[id].mutex);
        return -1;
    }

    thread_handle[id].running = 1;

    return 0;
}