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
struct TYPE_5__ {int /*<<< orphan*/  list_pending; int /*<<< orphan*/  list_free; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  event; TYPE_1__ request; int /*<<< orphan*/  clock; } ;
typedef  TYPE_2__ MMAL_CLOCK_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(MMAL_CLOCK_PRIVATE_T *private)
{
   FUNC1(private);

   FUNC0(&private->clock);

   FUNC3(private->request.list_free);
   FUNC3(private->request.list_pending);

   FUNC4(&private->event);

   FUNC2(&private->timer);
}