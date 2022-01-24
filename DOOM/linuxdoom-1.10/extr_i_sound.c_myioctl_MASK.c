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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int,int,int*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC3
( int	fd,
  int	command,
  int*	arg )
{   
    int		rc;
    extern int	errno;
    
    rc = FUNC2(fd, command, arg);  
    if (rc < 0)
    {
	FUNC1(stderr, "ioctl(dsp,%d,arg) failed\n", command);
	FUNC1(stderr, "errno=%d\n", errno);
	FUNC0(-1);
    }
}