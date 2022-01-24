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
typedef  int /*<<< orphan*/  tBTA_AG_SCB ;
struct TYPE_5__ {int /*<<< orphan*/  layer_specific; int /*<<< orphan*/  event; } ;
struct TYPE_4__ {scalar_t__ param; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ TIMER_LIST_ENT ;
typedef  TYPE_2__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    BT_HDR          *p_buf;
    TIMER_LIST_ENT  *p_tle = (TIMER_LIST_ENT *) p;

    if ((p_buf = (BT_HDR *) FUNC2(sizeof(BT_HDR))) != NULL) {
        p_buf->event = p_tle->event;
        p_buf->layer_specific = FUNC0((tBTA_AG_SCB *) p_tle->param);
        FUNC1(p_buf);
    }
}