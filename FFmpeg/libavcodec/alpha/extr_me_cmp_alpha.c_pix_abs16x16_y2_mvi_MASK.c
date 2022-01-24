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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *v, uint8_t *pix1, uint8_t *pix2, int line_size, int h)
{
    int result = 0;

    if ((size_t) pix2 & 0x7) {
        uint64_t t, p2_l, p2_r;
        t     = FUNC4(pix2 + 8);
        p2_l  = FUNC2(FUNC4(pix2), pix2) | FUNC1(t, pix2);
        p2_r  = FUNC2(t, pix2) | FUNC1(FUNC4(pix2 + 16), pix2);

        do {
            uint64_t p1_l, p1_r, np2_l, np2_r;
            uint64_t t;

            p1_l  = FUNC3(pix1);
            p1_r  = FUNC3(pix1 + 8);
            pix2 += line_size;
            t     = FUNC4(pix2 + 8);
            np2_l = FUNC2(FUNC4(pix2), pix2) | FUNC1(t, pix2);
            np2_r = FUNC2(t, pix2) | FUNC1(FUNC4(pix2 + 16), pix2);

            result += FUNC5(p1_l, FUNC0(p2_l, np2_l))
                    + FUNC5(p1_r, FUNC0(p2_r, np2_r));

            pix1 += line_size;
            p2_l  = np2_l;
            p2_r  = np2_r;

        } while (--h);
    } else {
        uint64_t p2_l, p2_r;
        p2_l = FUNC3(pix2);
        p2_r = FUNC3(pix2 + 8);
        do {
            uint64_t p1_l, p1_r, np2_l, np2_r;

            p1_l = FUNC3(pix1);
            p1_r = FUNC3(pix1 + 8);
            pix2 += line_size;
            np2_l = FUNC3(pix2);
            np2_r = FUNC3(pix2 + 8);

            result += FUNC5(p1_l, FUNC0(p2_l, np2_l))
                    + FUNC5(p1_r, FUNC0(p2_r, np2_r));

            pix1 += line_size;
            p2_l  = np2_l;
            p2_r  = np2_r;
        } while (--h);
    }
    return result;
}