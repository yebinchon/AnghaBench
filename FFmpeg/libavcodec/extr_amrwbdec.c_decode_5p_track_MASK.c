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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC4(int *out, int code, int m, int off) ///code: 5m bits
{
    int half_3p = FUNC0(code, 5*m - 1) << (m - 1);

    FUNC3(out, FUNC1(code, 2*m + 1, 3*m - 2),
                    m - 1, off + half_3p);

    FUNC2(out + 3, FUNC1(code, 0, 2*m + 1), m, off);
}