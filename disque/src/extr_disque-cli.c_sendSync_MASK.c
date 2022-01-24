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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned long long FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int,char*,int) ; 

unsigned long long FUNC6(int fd) {
    /* To start we need to send the SYNC command and return the payload.
     * The hidisque client lib does not understand this part of the protocol
     * and we don't want to mess with its buffers, so everything is performed
     * using direct low-level I/O. */
    char buf[4096], *p;
    ssize_t nread;

    /* Send the SYNC command. */
    if (FUNC5(fd,"SYNC\r\n",6) != 6) {
        FUNC1(stderr,"Error writing to master\n");
        FUNC0(1);
    }

    /* Read $<payload>\r\n, making sure to read just up to "\n" */
    p = buf;
    while(1) {
        nread = FUNC3(fd,p,1);
        if (nread <= 0) {
            FUNC1(stderr,"Error reading bulk length while SYNCing\n");
            FUNC0(1);
        }
        if (*p == '\n' && p != buf) break;
        if (*p != '\n') p++;
    }
    *p = '\0';
    if (buf[0] == '-') {
        FUNC2("SYNC with master failed: %s\n", buf);
        FUNC0(1);
    }
    return FUNC4(buf+1,NULL,10);
}