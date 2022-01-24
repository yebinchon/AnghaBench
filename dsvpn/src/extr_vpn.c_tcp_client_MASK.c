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
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_socktype; scalar_t__ ai_flags; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ AF_UNSPEC ; 
 int EINVAL ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(const char *address, const char *port)
{
    struct addrinfo hints, *res;
    int             eai;
    int             client_fd;
    int             err;

    FUNC7("Connecting to %s:%s...\n", address, port);
    FUNC6(&hints, 0, sizeof hints);
    hints.ai_flags    = 0;
    hints.ai_family   = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_addr     = NULL;
    if ((eai = FUNC5(address, port, &hints, &res)) != 0 ||
        (res->ai_family != AF_INET && res->ai_family != AF_INET6)) {
        FUNC2(stderr, "Unable to create the client socket: [%s]\n", FUNC4(eai));
        errno = EINVAL;
        return -1;
    }
    if ((client_fd = FUNC8(res->ai_family, SOCK_STREAM, IPPROTO_TCP)) == -1 ||
        FUNC9(client_fd) != 0 ||
        FUNC1(client_fd, (const struct sockaddr *) res->ai_addr, res->ai_addrlen) != 0) {
        FUNC3(res);
        err = errno;
        (void) FUNC0(client_fd);
        errno = err;
        return -1;
    }
    FUNC3(res);
    return client_fd;
}