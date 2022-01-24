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
struct addrinfo {int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int FUNC3 (char*,char*,struct addrinfo const*,struct addrinfo**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res = NULL;

    const int err = FUNC3("localhost", "80", &hints, &res);
    FUNC1(0, err);
    FUNC2(res);

    const int dummy_socket_fd = FUNC4(res->ai_family, res->ai_socktype, 0);
    FUNC0(dummy_socket_fd >= 0);

    return dummy_socket_fd;
}