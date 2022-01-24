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
struct TYPE_6__ {int fd; int iswopen; scalar_t__ resv; TYPE_1__* w; scalar_t__ free; int /*<<< orphan*/  path; } ;
struct TYPE_5__ {scalar_t__ filesize; } ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 int O_CREAT ; 
 int O_WRONLY ; 
 int Walver ; 
 int FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int*,int) ; 

void
FUNC7(File *f)
{
    int fd, r;
    int n;
    int ver = Walver;

    fd = FUNC3(f->path, O_WRONLY|O_CREAT, 0400);
    if (fd < 0) {
        FUNC4("open %s", f->path);
        return;
    }

    r = FUNC1(fd, f->w->filesize);
    if (r) {
        if (FUNC0(fd) == -1)
            FUNC4("close");
        errno = r;
        FUNC4("falloc %s", f->path);
        r = FUNC5(f->path);
        if (r) {
            FUNC4("unlink %s", f->path);
        }
        return;
    }

    n = FUNC6(fd, &ver, sizeof(int));
    if (n < 0 || (size_t)n < sizeof(int)) {
        FUNC4("write %s", f->path);
        if (FUNC0(fd) == -1)
            FUNC4("close");
        return;
    }

    f->fd = fd;
    f->iswopen = 1;
    FUNC2(f);
    f->free = f->w->filesize - n;
    f->resv = 0;
}