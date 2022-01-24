#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  void* int64 ;
typedef  int /*<<< orphan*/  Tube ;
struct TYPE_6__ {void* ttr; void* delay; int /*<<< orphan*/  pri; scalar_t__ id; } ;
struct TYPE_7__ {int /*<<< orphan*/  tube; TYPE_1__ r; } ;
typedef  TYPE_2__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ next_id ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

Job *
FUNC4(uint32 pri, int64 delay, int64 ttr,
                 int body_size, Tube *tube, uint64 id)
{
    Job *j;

    j = FUNC1(body_size);
    if (!j) {
        FUNC3("OOM");
        return (Job *) 0;
    }

    if (id) {
        j->r.id = id;
        if (id >= next_id) next_id = id + 1;
    } else {
        j->r.id = next_id++;
    }
    j->r.pri = pri;
    j->r.delay = delay;
    j->r.ttr = ttr;

    FUNC2(j);

    FUNC0(j->tube, tube);

    return j;
}