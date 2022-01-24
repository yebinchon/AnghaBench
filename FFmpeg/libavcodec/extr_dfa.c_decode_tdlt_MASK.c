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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(GetByteContext *gb, uint8_t *frame, int width, int height)
{
    const uint8_t *frame_end = frame + width * height;
    uint32_t segments = FUNC3(gb);
    int skip, copy;

    while (segments--) {
        if (FUNC1(gb) < 2)
            return AVERROR_INVALIDDATA;
        copy = FUNC2(gb) * 2;
        skip = FUNC2(gb) * 2;
        if (frame_end - frame < copy + skip ||
            FUNC1(gb) < copy)
            return AVERROR_INVALIDDATA;
        frame += skip;
        FUNC0(gb, frame, copy);
        frame += copy;
    }

    return 0;
}