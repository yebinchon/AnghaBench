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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*,char*,char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC5(char *source, char *destination) {
    pid_t parent = FUNC2();
    pid_t pid = FUNC1();

    if (pid == -1) {
        // error, failed to fork()
        return(-1);
    } else if (pid > 0) {
        int status;
        FUNC4(pid, &status, 0);
    } else {
        // we are the child
        FUNC0("mksquashfs", "mksquashfs", source, destination, "-root-owned", "-noappend", (char *)0);
        FUNC3("execlp");   // execvp() returns only on error
        return(-1); // exec never returns
    }
    return(0);
}