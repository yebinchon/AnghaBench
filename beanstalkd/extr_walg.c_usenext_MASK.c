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
struct TYPE_5__ {TYPE_2__* cur; } ;
typedef  TYPE_1__ Wal ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(Wal *w)
{
    File *f;

    f = w->cur;
    if (!f->next) {
        FUNC1("there is no next wal file");
        return 0;
    }

    w->cur = f->next;
    FUNC0(f);
    return 1;
}