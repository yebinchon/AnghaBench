#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_4__ {scalar_t__ atime; int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  sl; scalar_t__ clients; } ;
typedef  TYPE_1__ queue ;
struct TYPE_5__ {scalar_t__ unixtime; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int QUEUE_FLAG_PAUSED_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_2__ server ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(queue *q, time_t max_idle_time) {
    time_t idle = server.unixtime - q->atime;
    if (idle < max_idle_time) return C_ERR;
    if (q->clients && FUNC1(q->clients) != 0) return C_ERR;
    if (FUNC2(q->sl)) return C_ERR;
    if (q->flags & QUEUE_FLAG_PAUSED_ALL) return C_ERR;
    FUNC0(q->name);
    return C_OK;
}