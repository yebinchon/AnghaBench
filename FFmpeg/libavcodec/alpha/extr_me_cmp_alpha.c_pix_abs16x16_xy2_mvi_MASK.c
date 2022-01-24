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
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__*) ; 

__attribute__((used)) static int FUNC4(void *v, uint8_t *pix1, uint8_t *pix2, int line_size, int h)
{
    int result = 0;

    uint64_t p1_l, p1_r;
    uint64_t p2_l, p2_r, p2_x;

    p1_l = FUNC1(pix1);
    p1_r = FUNC1(pix1 + 8);

    if ((size_t) pix2 & 0x7) { /* could be optimized a lot */
        p2_l = FUNC3(pix2);
        p2_r = FUNC3(pix2 + 8);
        p2_x = (uint64_t) pix2[16] << 56;
    } else {
        p2_l = FUNC1(pix2);
        p2_r = FUNC1(pix2 + 8);
        p2_x = FUNC1(pix2 + 16) << 56;
    }

    do {
        uint64_t np1_l, np1_r;
        uint64_t np2_l, np2_r, np2_x;

        pix1 += line_size;
        pix2 += line_size;

        np1_l = FUNC1(pix1);
        np1_r = FUNC1(pix1 + 8);

        if ((size_t) pix2 & 0x7) { /* could be optimized a lot */
            np2_l = FUNC3(pix2);
            np2_r = FUNC3(pix2 + 8);
            np2_x = (uint64_t) pix2[16] << 56;
        } else {
            np2_l = FUNC1(pix2);
            np2_r = FUNC1(pix2 + 8);
            np2_x = FUNC1(pix2 + 16) << 56;
        }

        result += FUNC2(p1_l,
                       FUNC0( p2_l, ( p2_l >> 8) | ((uint64_t)  p2_r << 56),
                            np2_l, (np2_l >> 8) | ((uint64_t) np2_r << 56)))
                + FUNC2(p1_r,
                       FUNC0( p2_r, ( p2_r >> 8) | ((uint64_t)  p2_x),
                            np2_r, (np2_r >> 8) | ((uint64_t) np2_x)));

        p1_l = np1_l;
        p1_r = np1_r;
        p2_l = np2_l;
        p2_r = np2_r;
        p2_x = np2_x;
    } while (--h);

    return result;
}