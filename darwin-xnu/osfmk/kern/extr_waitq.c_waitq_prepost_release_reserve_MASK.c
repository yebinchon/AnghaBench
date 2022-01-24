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
typedef  int /*<<< orphan*/  uint64_t ;
struct wq_prepost {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wq_prepost*) ; 
 struct wq_prepost* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

void FUNC3(uint64_t id)
{
	struct wq_prepost *wqp;

	FUNC2("releasing reserved preposts starting at: 0x%llx", id);

	wqp = FUNC1(id);
	if (!wqp)
		return;

	FUNC0(wqp);
}