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
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*) ; 
 int FUNC7 (char*,char*,struct addrinfo const*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res;
    int err;
    struct sockaddr_in saddr = { 0 };
    int socket_fd = -1;

    err = FUNC7("localhost", "80", &hints, &res);
    FUNC1(err, 0);
    FUNC3(res);

    socket_fd = FUNC10(res->ai_family, res->ai_socktype, 0);
    FUNC0(socket_fd >= 0);

    saddr.sin_family = PF_INET;
    saddr.sin_port = FUNC9(80);
    saddr.sin_addr.s_addr = FUNC8(INADDR_ANY);
    err = FUNC4(socket_fd, (struct sockaddr *) &saddr, sizeof(struct sockaddr_in));
    FUNC0(err >= 0);

    err = FUNC5(socket_fd, res->ai_addr, res->ai_addrlen);
    FUNC2(err, 0, "Socket connection failed");

    FUNC6(res);

    return socket_fd;
}