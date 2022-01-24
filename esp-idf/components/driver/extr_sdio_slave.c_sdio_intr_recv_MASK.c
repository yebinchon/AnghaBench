#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ portBASE_TYPE ;
struct TYPE_8__ {int tx_done; } ;
struct TYPE_7__ {scalar_t__ tx_done; } ;
struct TYPE_11__ {TYPE_2__ slc0_int_clr; TYPE_1__ slc0_int_raw; } ;
struct TYPE_10__ {scalar_t__ owner; } ;
struct TYPE_9__ {int /*<<< orphan*/  recv_event; TYPE_4__* recv_cur_ret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_6__ SLC ; 
 TYPE_4__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_3__ context ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  qe ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC6(void* arg)
{
    portBASE_TYPE yield = 0;
    if (SLC.slc0_int_raw.tx_done) {
        SLC.slc0_int_clr.tx_done = 1;
        while (context.recv_cur_ret && context.recv_cur_ret->owner == 0) {
            // This may cause the ``cur_ret`` pointer to be NULL, indicating the list is empty,
            // in this case the ``tx_done`` should happen no longer until new desc is appended.
            // The app is responsible to place the pointer to the right place again when appending new desc.
            FUNC2();
            context.recv_cur_ret = FUNC1(context.recv_cur_ret, qe);
            FUNC3();
            FUNC0(TAG, "intr_recv: Give");
            FUNC5(context.recv_event, &yield);
            SLC.slc0_int_clr.tx_done = 1;
        };
    }
    if (yield) FUNC4();
}