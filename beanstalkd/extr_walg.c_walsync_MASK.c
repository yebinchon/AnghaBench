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
typedef  scalar_t__ int64 ;
struct TYPE_5__ {scalar_t__ lastsync; scalar_t__ syncrate; TYPE_1__* cur; scalar_t__ wantsync; } ;
typedef  TYPE_2__ Wal ;
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(Wal *w)
{
    int64 now;

    now = FUNC1();
    if (w->wantsync && now >= w->lastsync+w->syncrate) {
        w->lastsync = now;
        if (FUNC0(w->cur->fd) == -1) {
            FUNC2("fsync");
        }
    }
}