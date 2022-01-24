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
typedef  int uint32_t ;
struct proc_bsdinfo {scalar_t__* pbi_comm; scalar_t__* pbi_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  PROC_PIDTBSDINFO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__**,void*,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc_bsdinfo*,int) ; 
 scalar_t__ FUNC2 (void*) ; 

int
FUNC3(int pid, void * buffer, uint32_t buffersize)
{
	int retval = 0, len;
	struct proc_bsdinfo pbsd;
	
	
	if (buffersize < sizeof(pbsd.pbi_name)) {
		errno = ENOMEM;
		return(0);
	}

	retval = FUNC1(pid, PROC_PIDTBSDINFO, (uint64_t)0, &pbsd, sizeof(struct proc_bsdinfo));
	if (retval != 0) {
		if (pbsd.pbi_name[0]) {
			FUNC0(&pbsd.pbi_name, buffer, sizeof(pbsd.pbi_name));
		} else {
			FUNC0(&pbsd.pbi_comm, buffer, sizeof(pbsd.pbi_comm));
		}
		len = (int)FUNC2(buffer);
		return(len);
	}
	return(0);
}