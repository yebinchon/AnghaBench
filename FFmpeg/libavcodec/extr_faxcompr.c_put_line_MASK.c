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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(uint8_t *dst, int size, int width, const int *runs)
{
    PutBitContext pb;
    int run, mode = ~0, pix_left = width, run_idx = 0;

    FUNC1(&pb, dst, size);
    while (pix_left > 0) {
        run       = runs[run_idx++];
        mode      = ~mode;
        pix_left -= run;
        for (; run > 16; run -= 16)
            FUNC2(&pb, 16, mode);
        if (run)
            FUNC2(&pb, run, mode);
    }
    FUNC0(&pb);
}