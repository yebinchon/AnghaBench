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
typedef  int int8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(GetByteContext *gb, uint8_t *frame, int width, int height)
{
    uint8_t *line_ptr;
    int count, lines, segments;

    count = FUNC4(gb);
    if (count >= height)
        return AVERROR_INVALIDDATA;
    frame += width * count;
    lines = FUNC4(gb);
    if (count + lines > height)
        return AVERROR_INVALIDDATA;

    while (lines--) {
        if (FUNC2(gb) < 1)
            return AVERROR_INVALIDDATA;
        line_ptr = frame;
        frame += width;
        segments = FUNC3(gb);
        while (segments--) {
            if (frame - line_ptr <= FUNC5(gb))
                return AVERROR_INVALIDDATA;
            line_ptr += FUNC1(gb);
            count = (int8_t)FUNC1(gb);
            if (count >= 0) {
                if (frame - line_ptr < count)
                    return AVERROR_INVALIDDATA;
                if (FUNC0(gb, line_ptr, count) != count)
                    return AVERROR_INVALIDDATA;
            } else {
                count = -count;
                if (frame - line_ptr < count)
                    return AVERROR_INVALIDDATA;
                FUNC6(line_ptr, FUNC1(gb), count);
            }
            line_ptr += count;
        }
    }

    return 0;
}