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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *v, uint8_t *pix1, uint8_t *pix2, int line_size, int h)
{
    int result = 0;

    if ((size_t) pix2 & 0x7) {
        /* works only when pix2 is actually unaligned */
        do {                    /* do 8 pixel a time */
            uint64_t p1, p2;

            p1  = FUNC0(pix1);
            p2  = FUNC2(pix2);
            result += FUNC1(p1, p2);

            pix1 += line_size;
            pix2 += line_size;
        } while (--h);
    } else {
        do {
            uint64_t p1, p2;

            p1 = FUNC0(pix1);
            p2 = FUNC0(pix2);
            result += FUNC1(p1, p2);

            pix1 += line_size;
            pix2 += line_size;
        } while (--h);
    }

    return result;
}