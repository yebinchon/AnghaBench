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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(uint8_t *dst, GetBitContext *gb, int n)
{
    int i, val, repeat;

    for (i = 0; i < n;) {
        repeat = FUNC1(gb, 3);
        val    = FUNC1(gb, 5);
        if (repeat == 0)
            repeat = FUNC1(gb, 8);
        if (i + repeat > n || FUNC2(gb) < 0) {
            FUNC0(NULL, AV_LOG_ERROR, "Error reading huffman table\n");
            return AVERROR_INVALIDDATA;
        }
        while (repeat--)
            dst[i++] = val;
    }
    return 0;
}