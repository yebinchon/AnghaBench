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
struct TYPE_2__ {int timer_expired; int /*<<< orphan*/  wait_event; } ;
typedef  TYPE_1__ ILCS_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *param)
{
   ILCS_SERVICE_T *st = (ILCS_SERVICE_T *) param;

   FUNC0(st->timer_expired == 0);
   st->timer_expired = 1;
   FUNC1(&st->wait_event);
}