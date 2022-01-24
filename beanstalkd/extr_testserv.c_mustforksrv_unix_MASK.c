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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {TYPE_1__ sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  kill_srvpid ; 
 int FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*) ; 
 TYPE_2__ srv ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ srvpid ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static char *
FUNC15(void)
{
    static char path[90];
    char name[95];
    FUNC11(path, sizeof(path), "%s/socket", FUNC2());
    FUNC11(name, sizeof(name), "unix:%s", path);
    srv.sock.fd = FUNC6(name, NULL);
    if (srv.sock.fd == -1) {
        FUNC9("mustforksrv_unix failed");
        FUNC4(1);
    }

    srvpid = FUNC5();
    if (srvpid < 0) {
        FUNC14("fork");
        FUNC4(1);
    }

    if (srvpid > 0) {
        // On exit the parent (test) sends SIGTERM to the child.
        FUNC1(kill_srvpid);
        FUNC7("start server socket=%s\n", path);
        FUNC0(FUNC3(path));
        return path;
    }

    /* now in child */

    FUNC10();
    FUNC8();

    FUNC12(&srv);

    FUNC13(&srv); /* does not return */
    FUNC4(1); /* satisfy the compiler */
}