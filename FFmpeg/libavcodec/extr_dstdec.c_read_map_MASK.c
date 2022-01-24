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
struct TYPE_3__ {int elements; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int DST_MAX_CHANNELS ; 
 unsigned int DST_MAX_ELEMENTS ; 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(GetBitContext *gb, Table *t, unsigned int map[DST_MAX_CHANNELS], int channels)
{
    int ch;
    t->elements = 1;
    map[0] = 0;
    if (!FUNC2(gb)) {
        for (ch = 1; ch < channels; ch++) {
            int bits = FUNC0(t->elements) + 1;
            map[ch] = FUNC1(gb, bits);
            if (map[ch] == t->elements) {
                t->elements++;
                if (t->elements >= DST_MAX_ELEMENTS)
                    return AVERROR_INVALIDDATA;
            } else if (map[ch] > t->elements) {
                return AVERROR_INVALIDDATA;
            }
        }
    } else {
        FUNC3(map, 0, sizeof(*map) * DST_MAX_CHANNELS);
    }
    return 0;
}