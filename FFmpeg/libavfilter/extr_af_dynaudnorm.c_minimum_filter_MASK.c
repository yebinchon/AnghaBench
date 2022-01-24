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
typedef  int /*<<< orphan*/  cqueue ;

/* Variables and functions */
 double DBL_MAX ; 
 double FUNC0 (double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static double FUNC3(cqueue *q)
{
    double min = DBL_MAX;
    int i;

    for (i = 0; i < FUNC2(q); i++) {
        min = FUNC0(min, FUNC1(q, i));
    }

    return min;
}