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

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int LOCK_EX ; 
 int LOCK_NB ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(char *filename) {
/* flock() does not exist on Solaris
 * and a fcntl-based solution won't help, as we constantly re-open that file,
 * which will release _all_ locks anyway
 */
#if !defined(__sun)
    /* To lock it, we need to open the file in a way it is created if
     * it does not exist, otherwise there is a race condition with other
     * processes. */
    int fd = FUNC2(filename,O_WRONLY|O_CREAT,0644);
    if (fd == -1) {
        FUNC3(LL_WARNING,
            "Can't open %s in order to acquire a lock: %s",
            filename, FUNC4(errno));
        return C_ERR;
    }

    if (FUNC1(fd,LOCK_EX|LOCK_NB) == -1) {
        if (errno == EWOULDBLOCK) {
            FUNC3(LL_WARNING,
                 "Sorry, the cluster configuration file %s is already used "
                 "by a different Disque node. Please make sure that "
                 "different nodes use different cluster configuration "
                 "files.", filename);
        } else {
            FUNC3(LL_WARNING,
                "Impossible to lock %s: %s", filename, FUNC4(errno));
        }
        FUNC0(fd);
        return C_ERR;
    }
    /* Lock acquired: leak the 'fd' by not closing it, so that we'll retain the
     * lock to the file as long as the process exists. */
#endif /* __sun */

    return C_OK;
}