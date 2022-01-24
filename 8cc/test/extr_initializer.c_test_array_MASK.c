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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int**,int) ; 
 int /*<<< orphan*/  FUNC2 (short*,short***,int) ; 

__attribute__((used)) static void FUNC3() {
    int x[] = { 1, 3, 5 };
    FUNC0(1, x[0]);
    FUNC0(3, x[1]);
    FUNC0(5, x[2]);

    int ye[] = { 1, 3, 5, 2, 4, 6, 3, 5, 7, 0, 0, 0 };
    int y1[4][3] = { { 1, 3, 5 }, { 2, 4, 6 }, { 3, 5, 7 }, };
    FUNC1(ye, y1, 12);
    int y2[4][3] = { 1, 3, 5, 2, 4, 6, 3, 5, 7 };
    FUNC1(ye, y2, 12);

    int ze[] = { 1, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0 };
    int z[4][3] = { { 1 }, { 2 }, { 3 }, { 4 } };
    FUNC1(ze, z, 12);

    short qe[24] = { 1, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 4, 5, 6 };
    short q[4][3][2] = { { 1 }, { 2, 3 }, { 4, 5, 6 } };
    FUNC2(qe, q, 24);

    int a[] = {{{ 3 }}};
    FUNC0(3, a[0]);
}