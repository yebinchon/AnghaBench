#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  begin_ts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  processing_queue ; 
 int /*<<< orphan*/  session ; 
 int /*<<< orphan*/  spawn_queue ; 
 scalar_t__ tracing_on ; 

__attribute__((used)) static void FUNC3(void) {
	FUNC1(begin_ts);
	FUNC0(spawn_queue);
	FUNC0(processing_queue);
	if (tracing_on) {
		FUNC2(session, 1);
	}
}