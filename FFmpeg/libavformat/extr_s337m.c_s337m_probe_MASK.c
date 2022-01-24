#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
struct TYPE_3__ {int buf_size; int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int,int,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(const AVProbeData *p)
{
    uint64_t state = 0;
    int markers[3] = { 0 };
    int i, pos, sum, max, data_type, data_size, offset;
    uint8_t *buf;

    for (pos = 0; pos < p->buf_size; pos++) {
        state = (state << 8) | p->buf[pos];
        if (!FUNC5(state))
            continue;

        buf = p->buf + pos + 1;
        if (FUNC3(state)) {
            data_type = FUNC0(buf    );
            data_size = FUNC0(buf + 2);
        } else {
            data_type = FUNC1(buf    );
            data_size = FUNC1(buf + 3);
        }

        if (FUNC6(NULL, state, data_type, data_size, &offset, NULL))
            continue;

        i = FUNC3(state) ? 0 : FUNC4(state) ? 1 : 2;
        markers[i]++;

        pos  += FUNC3(state) ? 4 : 6;
        pos  += offset;
        state = 0;
    }

    sum = max = 0;
    for (i = 0; i < FUNC2(markers); i++) {
        sum += markers[i];
        if (markers[max] < markers[i])
            max = i;
    }

    if (markers[max] > 3 && markers[max] * 4 > sum * 3)
        return AVPROBE_SCORE_EXTENSION + 1;

    return 0;
}