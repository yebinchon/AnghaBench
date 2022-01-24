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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t const,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(char *socket_file)
{
    struct sockaddr_un addr;
    const size_t maxlen = sizeof(addr.sun_path);
    addr.sun_family = AF_UNIX;
    FUNC2(addr.sun_path, maxlen, "%s", socket_file);

    int fd = FUNC3(AF_UNIX, SOCK_STREAM, 0);
    if (fd == -1) {
        FUNC4("socket");
        FUNC1(1);
    }

    int r = FUNC0(fd, (struct sockaddr *)&addr, sizeof addr);
    if (r == -1) {
        FUNC4("connect");
        FUNC1(1);
    }

    return fd;
}