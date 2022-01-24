#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ File ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*,...) ; 

__attribute__((used)) static int
FUNC3(File *f, void *c, int n, int *err, char *desc)
{
    int r;

    r = FUNC0(f->fd, c, n);
    if (r == -1) {
        FUNC1("read");
        FUNC2(f, 0, "error reading %s", desc);
        *err = 1;
        return 0;
    }
    if (r != n) {
        FUNC2(f, -r, "unexpected EOF reading %d bytes (got %d): %s", n, r, desc);
        *err = 1;
        return 0;
    }
    return r;
}