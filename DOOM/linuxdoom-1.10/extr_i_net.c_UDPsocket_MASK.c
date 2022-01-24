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
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (void)
{
    int	s;
	
    // allocate a socket
    s = FUNC1 (PF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (s<0)
	FUNC0 ("can't create socket: %s",FUNC2(errno));
		
    return s;
}