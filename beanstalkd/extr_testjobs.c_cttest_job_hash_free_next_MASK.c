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
typedef  int uint64 ;
struct TYPE_4__ {struct TYPE_4__* ht_next; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  default_tube ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5()
{
    Job *a, *b;
    uint64 aid = 97, bid = 12386;

    FUNC0(default_tube, FUNC4("default"));
    b = FUNC3(0, 0, 1, 0, default_tube, bid);
    a = FUNC3(0, 0, 1, 0, default_tube, aid);

    FUNC1(a->ht_next == b, "b should be chained to a");

    FUNC2(b);

    FUNC1(a->ht_next == NULL, "job should be missing");
}