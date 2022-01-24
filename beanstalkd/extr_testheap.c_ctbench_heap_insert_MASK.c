#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__** data; int /*<<< orphan*/  setpos; int /*<<< orphan*/  less; } ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/  pri; } ;
struct TYPE_12__ {TYPE_1__ r; } ;
typedef  TYPE_2__ Job ;
typedef  TYPE_3__ Heap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__** FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  job_pri_less ; 
 int /*<<< orphan*/  job_setpos ; 
 TYPE_2__* FUNC8 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(int n)
{
    Job **j = FUNC1(n, sizeof *j);
    int i;
    for (i = 0; i < n; i++) {
        j[i] = FUNC8(1, 0, 1, 0, 0);
        FUNC0(j[i]);
        j[i]->r.pri = -j[i]->r.id;
    }
    Heap h = {
        .less = job_pri_less,
        .setpos = job_setpos,
    };

    FUNC2();
    for (i = 0; i < n; i++) {
        FUNC5(&h, j[i]);
    }
    FUNC3();

    for (i = 0; i < n; i++)
        FUNC7(FUNC6(&h, 0));
    FUNC4(h.data);
    FUNC4(j);
}