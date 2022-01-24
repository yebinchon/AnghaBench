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

__attribute__((used)) static void FUNC5(int *out, int code, int m, int off) ///code: 4m bits
{
    int half_4p, subhalf_2p;
    int b_offset = 1 << (m - 1);

    switch (FUNC1(code, 4*m - 2, 2)) { /* case ID (2 bits) */
    case 0: /* 0 pulses in A, 4 pulses in B or vice versa */
        half_4p = FUNC0(code, 4*m - 3) << (m - 1); // which has 4 pulses
        subhalf_2p = FUNC0(code, 2*m - 3) << (m - 2);

        FUNC3(out, FUNC1(code, 0, 2*m - 3),
                        m - 2, off + half_4p + subhalf_2p);
        FUNC3(out + 2, FUNC1(code, 2*m - 2, 2*m - 1),
                        m - 1, off + half_4p);
        break;
    case 1: /* 1 pulse in A, 3 pulses in B */
        FUNC2(out, FUNC1(code,  3*m - 2, m),
                        m - 1, off);
        FUNC4(out + 1, FUNC1(code, 0, 3*m - 2),
                        m - 1, off + b_offset);
        break;
    case 2: /* 2 pulses in each half */
        FUNC3(out, FUNC1(code, 2*m - 1, 2*m - 1),
                        m - 1, off);
        FUNC3(out + 2, FUNC1(code, 0, 2*m - 1),
                        m - 1, off + b_offset);
        break;
    case 3: /* 3 pulses in A, 1 pulse in B */
        FUNC4(out, FUNC1(code, m, 3*m - 2),
                        m - 1, off);
        FUNC2(out + 3, FUNC1(code, 0, m),
                        m - 1, off + b_offset);
        break;
    }
}