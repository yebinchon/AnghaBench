#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  live; int /*<<< orphan*/  queue; int /*<<< orphan*/  scan; } ;

/* Variables and functions */
 int /*<<< orphan*/ * h_live ; 
 int /*<<< orphan*/ * h_queue ; 
 int /*<<< orphan*/ * h_scan ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ hb_status ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2()
{
    hb_state_t state;

    if (h_scan == NULL) return;
    FUNC0( h_scan, &state );
    FUNC1(&state, &hb_status.scan);
    FUNC0( h_queue, &state );
    FUNC1(&state, &hb_status.queue);
    FUNC0( h_live, &state );
    FUNC1(&state, &hb_status.live);
}