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
typedef  int pid_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_TLOCK ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC9()
{
#if !defined(_WIN32)
    gchar *config, *path;
    pid_t  pid;
    FILE  *fp;
    int    fd;

    pid    = FUNC5();
    config = FUNC6(NULL);
    path   = FUNC4 ("%s/ghb.pid.%d", config, pid);
    fp     = FUNC2(path, "w");

    if (fp != NULL)
    {
        FUNC1(fp, "%d\n", pid);
        FUNC0(fp);
    }

    fd = FUNC8(path, O_RDWR|O_CREAT, S_IRUSR|S_IWUSR);
    if (fd >= 0)
    {
        FUNC7(fd, F_TLOCK, 0);
    }

    FUNC3(config);
    FUNC3(path);
#endif
}