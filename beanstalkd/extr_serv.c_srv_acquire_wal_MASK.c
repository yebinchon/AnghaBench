#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  dir; scalar_t__ use; } ;
struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* prev; } ;
struct TYPE_9__ {TYPE_3__ wal; } ;
typedef  TYPE_1__ Server ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 

void FUNC5(Server *s) {
    if (s->wal.use) {
        // We want to make sure that only one beanstalkd tries
        // to use the wal directory at a time. So acquire a lock
        // now and never release it.
        if (!FUNC3(&s->wal)) {
            FUNC2("failed to lock wal dir %s", s->wal.dir);
            FUNC0(10);
        }

        Job list = {.prev=NULL, .next=NULL};
        list.prev = list.next = &list;
        FUNC4(&s->wal, &list);
        int ok = FUNC1(s, &list);
        if (!ok) {
            FUNC2("failed to replay log");
            FUNC0(1);
        }
    }
}