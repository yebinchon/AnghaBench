#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ portBASE_TYPE ;
typedef  int /*<<< orphan*/  buf_stailq_t ;
struct TYPE_5__ {int owner; } ;
typedef  TYPE_1__ buf_desc_t ;
struct TYPE_6__ {int /*<<< orphan*/  recv_event; int /*<<< orphan*/  recv_link_list; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_2__ context ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  qe ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    buf_stailq_t *const queue = &context.recv_link_list;

    FUNC4();
    while(1) {
        portBASE_TYPE ret = FUNC7(context.recv_event, 0);
        if (ret == pdFALSE) break;

        buf_desc_t *desc = FUNC0(queue);
        FUNC3 (desc != NULL && desc->owner == 0);
        FUNC2(queue, qe);
        desc->owner = 1;
        FUNC1(queue, desc, qe);
        FUNC6();
        //we only add it to the tail here, without start the DMA nor increase buffer num.
    }
    FUNC5();
}