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
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int,int) ; 

__attribute__((used)) static void FUNC7(int *out, int code, int m, int off) ///code: 6m-2 bits
{
    int b_offset = 1 << (m - 1);
    /* which half has more pulses in cases 0 to 2 */
    int half_more  = FUNC0(code, 6*m - 5) << (m - 1);
    int half_other = b_offset - half_more;

    switch (FUNC1(code, 6*m - 4, 2)) { /* case ID (2 bits) */
    case 0: /* 0 pulses in A, 6 pulses in B or vice versa */
        FUNC2(out, FUNC1(code, 0, m),
                        m - 1, off + half_more);
        FUNC6(out + 1, FUNC1(code, m, 5*m - 5),
                        m - 1, off + half_more);
        break;
    case 1: /* 1 pulse in A, 5 pulses in B or vice versa */
        FUNC2(out, FUNC1(code, 0, m),
                        m - 1, off + half_other);
        FUNC6(out + 1, FUNC1(code, m, 5*m - 5),
                        m - 1, off + half_more);
        break;
    case 2: /* 2 pulses in A, 4 pulses in B or vice versa */
        FUNC3(out, FUNC1(code, 0, 2*m - 1),
                        m - 1, off + half_other);
        FUNC5(out + 2, FUNC1(code, 2*m - 1, 4*m - 4),
                        m - 1, off + half_more);
        break;
    case 3: /* 3 pulses in A, 3 pulses in B */
        FUNC4(out, FUNC1(code, 3*m - 2, 3*m - 2),
                        m - 1, off);
        FUNC4(out + 3, FUNC1(code, 0, 3*m - 2),
                        m - 1, off + b_offset);
        break;
    }
}