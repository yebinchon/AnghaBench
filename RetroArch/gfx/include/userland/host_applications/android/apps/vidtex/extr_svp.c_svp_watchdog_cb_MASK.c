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
struct TYPE_5__ {int /*<<< orphan*/  sema; TYPE_1__* video_output; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ SVP_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVP_STOP_ERROR ; 
 int /*<<< orphan*/  SVP_WATCHDOG_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *ctx)
{
   SVP_T *svp = ctx;
   FUNC0("%s: no frames received for %d ms, aborting", svp->video_output->name,
             SVP_WATCHDOG_TIMEOUT_MS);
   FUNC1(svp, SVP_STOP_ERROR);
   FUNC2(&svp->sema);
}