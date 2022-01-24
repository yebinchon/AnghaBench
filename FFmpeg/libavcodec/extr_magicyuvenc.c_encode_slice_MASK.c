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
struct TYPE_3__ {int len; int code; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ HuffEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(uint8_t *src, uint8_t *dst, int dst_size,
                        int width, int height, HuffEntry *he, int prediction)
{
    PutBitContext pb;
    int i, j;
    int count;

    FUNC1(&pb, dst, dst_size);

    FUNC2(&pb, 8, 0);
    FUNC2(&pb, 8, prediction);

    for (j = 0; j < height; j++) {
        for (i = 0; i < width; i++) {
            const int idx = src[i];
            FUNC2(&pb, he[idx].len, he[idx].code);
        }

        src += width;
    }

    count = FUNC3(&pb) & 0x1F;

    if (count)
        FUNC2(&pb, 32 - count, 0);

    count = FUNC3(&pb);

    FUNC0(&pb);

    return count >> 3;
}