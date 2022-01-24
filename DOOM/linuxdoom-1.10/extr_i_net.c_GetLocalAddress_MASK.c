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
struct hostent {scalar_t__* h_addr_list; } ;
typedef  int /*<<< orphan*/  hostname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 struct hostent* FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 

int FUNC3 (void)
{
    char		hostname[1024];
    struct hostent*	hostentry;	// host information entry
    int			v;

    // get local address
    v = FUNC2 (hostname, sizeof(hostname));
    if (v == -1)
	FUNC0 ("GetLocalAddress : gethostname: errno %d",errno);
	
    hostentry = FUNC1 (hostname);
    if (!hostentry)
	FUNC0 ("GetLocalAddress : gethostbyname: couldn't get local host");
		
    return *(int *)hostentry->h_addr_list[0];
}