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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  WvChannel ;
typedef  int /*<<< orphan*/  WavPackEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(WavPackEncodeContext *s, WvChannel *c,
                      int32_t *samples, int nb_samples, int dir)
{
    if (dir < 0)
        samples += nb_samples - 1;

    while (nb_samples--) {
        uint32_t low, value = FUNC3(samples[0]);

        if (value < FUNC1(0)) {
            FUNC0(0);
        } else {
            low = FUNC1(0);
            FUNC2(0);

            if (value - low < FUNC1(1)) {
                FUNC0(1);
            } else {
                low += FUNC1(1);
                FUNC2(1);

                if (value - low < FUNC1(2)) {
                    FUNC0(2);
                } else {
                    FUNC2(2);
                }
            }
        }
        samples += dir;
    }
}