#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint ;
struct TYPE_3__ {int /*<<< orphan*/  timestamps; } ;
typedef  TYPE_1__ chassis_timestamps_t ;
typedef  int /*<<< orphan*/  chassis_timestamp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(chassis_timestamps_t *ts,
		const char *name,
		const char *filename,
		gint line) {
	chassis_timestamp_t *t;

	t = FUNC1();
	FUNC0(t, name, filename, line);

	FUNC2(ts->timestamps, t);
}