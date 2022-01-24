#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {scalar_t__ user; TYPE_1__ sock; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ srv ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ verbose ; 

int
FUNC13(int argc, char **argv)
{
    FUNC0(argc);

    progname = argv[0];
    FUNC8(stdout);
    FUNC4(&srv, argv+1);

    if (verbose) {
        FUNC5("pid %d\n", FUNC2());
    }

    int r = FUNC3(srv.addr, srv.port);
    if (r == -1) {
        FUNC12("make_server_socket()");
        FUNC1(111);
    }

    srv.sock.fd = r;

    FUNC6();

    if (srv.user)
        FUNC11(srv.user);
    FUNC7();

    FUNC9(&srv);
    FUNC10(&srv);
    FUNC1(0);
}