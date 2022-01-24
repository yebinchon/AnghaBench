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
typedef  int /*<<< orphan*/  ucontext_t ;
struct TYPE_2__ {char* logfile; } ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int STDOUT_FILENO ; 
 int FUNC0 (void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,int) ; 
 TYPE_1__ server ; 

void FUNC5(ucontext_t *uc) {
    void *trace[100];
    int trace_size = 0, fd;
    int log_to_stdout = server.logfile[0] == '\0';

    /* Open the log file in append mode. */
    fd = log_to_stdout ?
        STDOUT_FILENO :
        FUNC4(server.logfile, O_APPEND|O_CREAT|O_WRONLY, 0644);
    if (fd == -1) return;

    /* Generate the stack trace */
    trace_size = FUNC0(trace, 100);

    /* overwrite sigaction with caller's address */
    if (FUNC3(uc) != NULL)
        trace[1] = FUNC3(uc);

    /* Write symbols to log file */
    FUNC1(trace, trace_size, fd);

    /* Cleanup */
    if (!log_to_stdout) FUNC2(fd);
}