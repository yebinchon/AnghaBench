#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* tail; } ;
typedef  TYPE_1__ Wal ;
struct TYPE_9__ {int resv; int free; struct TYPE_9__* next; } ;
typedef  int /*<<< orphan*/  Jobrec ;
typedef  TYPE_2__ File ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(Wal *w, File *b, int n)
{
    int rest, c, r;
    static const int z = sizeof(int) + sizeof(Jobrec);

    if (!b) return 1;

    rest = b->resv - n;
    r = rest % z;
    if (r == 0) return FUNC3(w, b->next, 0);

    c = z - r;
    if (w->tail->resv >= c && b->free >= c) {
        FUNC0(b, w->tail, c);
        return FUNC3(w, b->next, 0);
    }

    if (FUNC1(w, r) != r) {
        FUNC2("needfree");
        return 0;
    }
    FUNC0(w->tail, b, r);
    return FUNC3(w, b->next, 0);
}