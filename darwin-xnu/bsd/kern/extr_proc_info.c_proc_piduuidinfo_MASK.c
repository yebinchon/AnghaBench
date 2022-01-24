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
typedef  scalar_t__ uuid_t ;
typedef  int uint32_t ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 struct proc* PROC_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 struct proc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct proc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 

__attribute__((used)) static int
FUNC5(pid_t pid, uuid_t uuid_buf, uint32_t buffersize)
{
	struct proc * p = PROC_NULL;
	int zombref = 0;

	if (buffersize < sizeof(uuid_t))
		return EINVAL;

	if ((p = FUNC1(pid)) == PROC_NULL) {
		p = FUNC2(pid);
		zombref = 1;
	}
	if (p == PROC_NULL) {
		return ESRCH;
	}

	FUNC3(p, (unsigned char *)uuid_buf, buffersize);

	if (zombref)
		FUNC0(p);
	else
		FUNC4(p);

	return 0;
}