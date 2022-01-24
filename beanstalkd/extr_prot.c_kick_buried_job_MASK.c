#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  kick_ct; } ;
struct TYPE_13__ {int walresv; TYPE_1__ r; } ;
struct TYPE_12__ {int /*<<< orphan*/  wal; } ;
typedef  TYPE_2__ Server ;
typedef  TYPE_3__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(Server *s, Job *j)
{
    int r;
    int z;

    z = FUNC3(&s->wal);
    if (!z)
        return 0;
    j->walresv += z;

    FUNC2(j);

    j->r.kick_ct++;
    r = FUNC1(s, j, 0, 1);
    if (r == 1)
        return 1;

    /* ready queue is full, so bury it */
    FUNC0(s, j, 0);
    return 0;
}