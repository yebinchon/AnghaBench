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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 int FUNC5 (char*,char*,struct addrinfo const*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ socket_fd ; 

__attribute__((used)) static void FUNC10(void)
{
    const struct addrinfo hints = {
        .ai_family = AF_INET,
        .ai_socktype = SOCK_DGRAM,
    };
    struct addrinfo *res;
    int err;
    struct sockaddr_in saddr = { 0 };

    FUNC3();

    err = FUNC5("localhost", "80", &hints, &res);

    if (err != 0 || res == NULL) {
        FUNC0(TAG, "DNS lookup failed: %d", errno);
        return;
    }

    socket_fd = FUNC8(res->ai_family, res->ai_socktype, 0);

    if (socket_fd < 0) {
        FUNC0(TAG, "Failed to allocate socket.");
        FUNC4(res);
        return;
    }

    saddr.sin_family = PF_INET;
    saddr.sin_port = FUNC7(80);
    saddr.sin_addr.s_addr = FUNC6(INADDR_ANY);
    err = FUNC1(socket_fd, (struct sockaddr *) &saddr, sizeof(struct sockaddr_in));
    if (err < 0) {
        FUNC0(TAG, "Failed to bind socket");
        FUNC4(res);
        FUNC9();
        return;
    }

    if (FUNC2(socket_fd, res->ai_addr, res->ai_addrlen) != 0) {
        FUNC0(TAG, "Socket connection failed: %d", errno);
        FUNC4(res);
        FUNC9();
        return;
    }

    FUNC4(res);
}