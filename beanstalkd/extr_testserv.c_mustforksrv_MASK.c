#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in {int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kill_srvpid ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_2__ srv ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ srvpid ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(void)
{
    struct sockaddr_in addr;

    srv.sock.fd = FUNC4("127.0.0.1", "0");
    if (srv.sock.fd == -1) {
        FUNC8("mustforksrv failed");
        FUNC1(1);
    }

    size_t len = sizeof(addr);
    int r = FUNC3(srv.sock.fd, (struct sockaddr *)&addr, (socklen_t *)&len);
    if (r == -1 || len > sizeof(addr)) {
        FUNC8("mustforksrv failed");
        FUNC1(1);
    }

    int port = FUNC5(addr.sin_port);
    srvpid = FUNC2();
    if (srvpid < 0) {
        FUNC12("fork");
        FUNC1(1);
    }

    if (srvpid > 0) {
        // On exit the parent (test) sends SIGTERM to the child.
        FUNC0(kill_srvpid);
        FUNC6("start server port=%d pid=%d\n", port, srvpid);
        return port;
    }

    /* now in child */

    FUNC9();
    FUNC7();

    FUNC10(&srv);

    FUNC11(&srv); /* does not return */
    FUNC1(1); /* satisfy the compiler */
}