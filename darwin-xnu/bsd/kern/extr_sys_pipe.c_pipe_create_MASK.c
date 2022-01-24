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
struct pipe {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PIPE_ATIME ; 
 int PIPE_CTIME ; 
 int PIPE_MTIME ; 
 int /*<<< orphan*/  FUNC0 (struct pipe*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*,int) ; 
 int /*<<< orphan*/  pipe_zone ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct pipe **cpipep)
{
	struct pipe *cpipe;
	cpipe = (struct pipe *)FUNC2(pipe_zone);

	if ((*cpipep = cpipe) == NULL)
		return (ENOMEM);

	/*
	 * protect so pipespace or pipeclose don't follow a junk pointer
	 * if pipespace() fails.
	 */
	FUNC0(cpipe, sizeof *cpipe);

#ifndef	CONFIG_EMBEDDED
	/* Initial times are all the time of creation of the pipe */
	FUNC1(cpipe, PIPE_ATIME | PIPE_MTIME | PIPE_CTIME);
#endif
	return (0);
}