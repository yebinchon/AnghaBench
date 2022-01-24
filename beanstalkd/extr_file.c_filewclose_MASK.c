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
struct TYPE_6__ {scalar_t__ iswopen; int /*<<< orphan*/  fd; scalar_t__ free; TYPE_1__* w; } ;
struct TYPE_5__ {scalar_t__ filesize; } ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(File *f)
{
    if (!f) return;
    if (!f->iswopen) return;
    if (f->free) {
        errno = 0;
        if (FUNC2(f->fd, f->w->filesize - f->free) != 0) {
            FUNC3("ftruncate");
        }
    }
    if (FUNC0(f->fd) == -1)
        FUNC3("close");
    f->iswopen = 0;
    FUNC1(f);
}