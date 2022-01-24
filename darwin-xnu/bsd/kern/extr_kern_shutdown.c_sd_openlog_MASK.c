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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct timeval {int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FWRITE ; 
 int /*<<< orphan*/  NULLVP ; 
 int O_CREAT ; 
 int O_NOFOLLOW ; 
 char* PROC_SHUTDOWN_LOG ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_logvp ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(vfs_context_t ctx)
{
	int error = 0;
	struct timeval tv;
	
	/* Open shutdown log */
	if ((error = FUNC3(PROC_SHUTDOWN_LOG, (O_CREAT | FWRITE | O_NOFOLLOW), 0644, 0, &sd_logvp, ctx))) {
		FUNC1("Failed to open %s: error %d\n", PROC_SHUTDOWN_LOG, error);
		sd_logvp = NULLVP;
		return error;
	}

	FUNC4(sd_logvp, (off_t)0, 0, ctx);

	/* Write a little header */
	FUNC0(&tv);
	FUNC2(ctx, "Process shutdown log.  Current time is %lu (in seconds).\n\n", tv.tv_sec);

	return 0;
}