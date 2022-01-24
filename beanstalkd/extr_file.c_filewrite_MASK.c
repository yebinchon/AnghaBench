#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int resv; TYPE_1__* w; int /*<<< orphan*/  fd; } ;
struct TYPE_7__ {int walresv; int walused; } ;
struct TYPE_6__ {int resv; int alive; } ;
typedef  TYPE_2__ Job ;
typedef  TYPE_3__ File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static int
FUNC2(File *f, Job *j, void *buf, int len)
{
    int r;

    r = FUNC1(f->fd, buf, len);
    if (r != len) {
        FUNC0("write");
        return 0;
    }

    f->w->resv -= r;
    f->resv -= r;
    j->walresv -= r;
    j->walused += r;
    f->w->alive += r;
    return 1;
}