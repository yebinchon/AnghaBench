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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FRAME_LEN ; 
 int PITCH_MAX ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(const int16_t *buf, int offset, int *ccr_max,
                        int pitch_lag, int length, int dir)
{
    int limit, ccr, lag = 0;
    int i;

    pitch_lag = FUNC0(PITCH_MAX - 3, pitch_lag);
    if (dir > 0)
        limit = FUNC0(FRAME_LEN + PITCH_MAX - offset - length, pitch_lag + 3);
    else
        limit = pitch_lag + 3;

    for (i = pitch_lag - 3; i <= limit; i++) {
        ccr = FUNC1(buf, buf + dir * i, length);

        if (ccr > *ccr_max) {
            *ccr_max = ccr;
            lag = i;
        }
    }
    return lag;
}