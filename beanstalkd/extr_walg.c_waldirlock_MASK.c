#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct flock {scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
struct TYPE_3__ {char* dir; } ;
typedef  TYPE_1__ Wal ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_WRLCK ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(Wal *w)
{
    int r;
    int fd;
    struct flock lk;
    char *path;
    size_t path_length;

    path_length = FUNC5(w->dir) + FUNC5("/lock") + 1;
    if ((path = FUNC2(path_length)) == NULL) {
        FUNC6("malloc");
        return 0;
    }
    FUNC4(path, path_length, "%s/lock", w->dir);

    fd = FUNC3(path, O_WRONLY|O_CREAT, 0600);
    FUNC1(path);
    if (fd == -1) {
        FUNC6("open");
        return 0;
    }

    lk.l_type = F_WRLCK;
    lk.l_whence = SEEK_SET;
    lk.l_start = 0;
    lk.l_len = 0;
    r = FUNC0(fd, F_SETLK, &lk);
    if (r) {
        FUNC6("fcntl");
        return 0;
    }

    // intentionally leak fd, since we never want to close it
    // and we'll never need it again
    return 1;
}