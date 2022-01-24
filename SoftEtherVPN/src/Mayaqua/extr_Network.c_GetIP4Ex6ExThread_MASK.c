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
struct TYPE_3__ {int IPv6; int /*<<< orphan*/  HostName; int /*<<< orphan*/  Ip; int /*<<< orphan*/  Ok; int /*<<< orphan*/  Ref; } ;
typedef  int /*<<< orphan*/  THREAD ;
typedef  TYPE_1__ GETIP_THREAD_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  getip_thread_counter ; 

void FUNC8(THREAD *t, void *param)
{
	GETIP_THREAD_PARAM *p;
	// Validate arguments
	if (t == NULL || param == NULL)
	{
		return;
	}

	p = (GETIP_THREAD_PARAM *)param;

	FUNC0(p->Ref);

	FUNC6(t);

	FUNC1(t);

	// Execution of resolution
	if (p->IPv6 == false)
	{
		// IPv4
		p->Ok = FUNC4(&p->Ip, p->HostName);
	}
	else
	{
		// IPv6
		p->Ok = FUNC5(&p->Ip, p->HostName);
	}

	FUNC7(p);

	FUNC3(t);

	FUNC2(getip_thread_counter);
}